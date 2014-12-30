using System;
using System.Collections.Generic;
using System.Configuration;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Hosting;
using System.Web.Mvc;
using MVCForum.Domain.Constants;
using MVCForum.Domain.DomainModel;
using MVCForum.Domain.Interfaces.Services;
using MVCForum.Utilities;
using Microsoft.WindowsAzure;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Blob;
using log4net;
using Flurl;
namespace MVCForum.Website.Application
{
    public static class AppHelpers
    {
        private static ILog _log = LogManager.GetLogger(typeof(AppHelpers).Name);
        public const string BLOB_ROOT_URL = "https://nswebcontent.blob.core.windows.net";
        public const string CDN_ROOT_URL = "https://az697144.vo.msecnd.net";

        #region Application
        public static string GetAbsolutePathImageUrl(string imageName, Guid userId)
        {
            return Url.Combine(
                CDN_ROOT_URL,
                ConfigurationManager.AppSettings["ImageBlobContainerName"],
                GetUploadBlobDirectory(userId), imageName);
        }


        public static string GetCurrentMvcForumVersion()
        {
            var version = ConfigUtils.GetAppSetting("MVCForumVersion");
            return version;
        }

        public static bool SameVersionNumbers()
        {
            var version = HttpContext.Current.Application["Version"].ToString();
            return GetCurrentMvcForumVersion() == version;
        }

        public static bool InInstaller()
        {
            var url = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Path);
            if (!string.IsNullOrEmpty(url))
            {
                url = url.ToLowerInvariant();
                return url.Contains(AppConstants.InstallerUrl);
            }
            return false;
        }

        /// <summary>
        /// Returns true if the requested resource is one of the typical resources that needn't be processed by the cms engine.
        /// </summary>
        /// <param name="request">HTTP Request</param>
        /// <returns>True if the request targets a static resource file.</returns>
        /// <remarks>
        /// These are the file extensions considered to be static resources:
        /// .css
        ///	.gif
        /// .png 
        /// .jpg
        /// .jpeg
        /// .js
        /// .axd
        /// .ashx
        /// </remarks>
        public static bool IsStaticResource(HttpRequest request)
        {
            if (request == null)
                throw new ArgumentNullException("request");

            string path = request.Path;
            string extension = VirtualPathUtility.GetExtension(path);

            if (extension == null) return false;

            switch (extension.ToLower())
            {
                case ".axd":
                case ".ashx":
                case ".bmp":
                case ".css":
                case ".gif":
                case ".htm":
                case ".html":
                case ".ico":
                case ".jpeg":
                case ".jpg":
                case ".js":
                case ".png":
                case ".rar":
                case ".zip":
                    return true;
            }

            return false;
        }

        public static bool IsDbInstalled()
        {
            var filePath = Path.Combine(HostingEnvironment.MapPath("~/App_Data/"), AppConstants.SuccessDbFile);
            //if (!File.Exists(filePath))
            //{
            //    using (File.Create(filePath))
            //    {
            //        //we use 'using' to close the file after it's created
            //    }
            //}
            return File.Exists(filePath);
        }

        #endregion

        #region Themes

        /// <summary>
        /// Gets the theme folders currently installed
        /// </summary>
        /// <returns></returns>
        public static List<string> GetThemeFolders()
        {
            var folders = new List<string>();
            var themeRootFolder = HttpContext.Current.Server.MapPath(String.Format("~/{0}", AppConstants.ThemeRootFolderName));
            if (Directory.Exists(themeRootFolder))
            {
                folders.AddRange(Directory.GetDirectories(themeRootFolder)
                                .Select(Path.GetFileName)
                                .Where(x => !x.ToLower().Contains("base")));
            }
            else
            {
                throw new ApplicationException("Theme folder not found");
            }
            return folders;
        }


        #endregion

        #region SEO

        private const string CanonicalNext = "<link href=\"{0}\" rel=\"next\" />";
        private const string CanonicalPrev = "<link href=\"{0}\" rel=\"prev\" />";
        private const string Canonical = "<link href=\"{0}\" rel=\"canonical\" />";

        public static string CanonicalPagingTag(int totalItemCount, int pageSize, HtmlHelper helper)
        {
            var urlHelper = new UrlHelper(helper.ViewContext.RequestContext, helper.RouteCollection);
            var currentAction = helper.ViewContext.RouteData.GetRequiredString("Action");
            var url = urlHelper.Action(currentAction, new { });

            var pageCount = (int)Math.Ceiling(totalItemCount / (double)pageSize);

            var nextTag = String.Empty;
            var previousTag = String.Empty;

            var req = HttpContext.Current.Request["p"];
            var page = req != null ? Convert.ToInt32(req) : 1;

            // Sort the canonical tag out
            var canonicalTag = String.Format(Canonical, page <= 1 ? url : String.Format(AppConstants.PagingUrlFormat, url, page));

            // On the first page       
            if (pageCount > 1 & page <= 1)
            {
                nextTag = String.Format(CanonicalNext, String.Format(AppConstants.PagingUrlFormat, url, (page + 1)));
            }

            // On a page greater than the first page, but not the last
            if (pageCount > 1 & page > 1 & page < pageCount)
            {
                nextTag = String.Format(CanonicalNext, String.Format(AppConstants.PagingUrlFormat, url, (page + 1)));
                previousTag = String.Format(CanonicalPrev, String.Format(AppConstants.PagingUrlFormat, url, (page - 1)));
            }

            // On the last page
            if (pageCount > 1 & pageCount == page)
            {
                previousTag = String.Format(CanonicalPrev, String.Format(AppConstants.PagingUrlFormat, url, (page - 1)));
            }

            // return the canoncal tags
            return String.Concat(canonicalTag, Environment.NewLine,
                                    nextTag, Environment.NewLine,
                                    previousTag);
        }

        public static string CreatePageTitle(Entity entity, string fallBack)
        {
            if (entity != null)
            {
                if (entity is Category)
                {
                    var cat = entity as Category;
                    return cat.Name;
                }
                if (entity is Topic)
                {
                    var topic = entity as Topic;
                    return topic.Name;
                }
            }
            return fallBack;
        }

        public static string CreateMetaDesc(Entity entity)
        {
            return "";
        }

        #endregion

        #region Urls

        public static string CategoryRssUrls(string slug)
        {
            return String.Format("/{0}/rss/{1}", AppConstants.CategoryUrlIdentifier, slug);
        }

        #endregion

        #region String

        public static string ConvertPostContent(string post)
        {
            if (!string.IsNullOrEmpty(post))
            {
                // Convert any BBCode
                post = StringUtils.ConvertBbCodeToHtml(post, false);

                // If using the PageDown/MarkDown Editor uncomment this line
                post = StringUtils.ConvertMarkDown(post);

                // Allow video embeds
                post = StringUtils.EmbedVideosInPosts(post);

                // Add Google prettify code snippets
                post = post.Replace("<pre>", "<pre class='prettyprint'>");
            }

            return post;
        }

        public static string ReturnBadgeUrl(string badgeFile)
        {
            return String.Concat("~/content/badges/", badgeFile);
        }

        #endregion

        #region Installer

        /// <summary>
        /// Get the previous version number if there is one from the web.config
        /// </summary>
        /// <returns></returns>
        public static string PreviousVersionNo()
        {
            return ConfigUtils.GetAppSetting("MVCForumVersion");
        }

        /// <summary>
        /// Gets the main version number (Used by installer)
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentVersionNo()
        {
            //Installer for new versions and first startup
            // Get the current version
            var version = Assembly.GetExecutingAssembly().GetName().Version;

            // Store the value for use in the app
            return String.Format("{0}.{1}", version.Major, version.Minor);
        }

        /// <summary>
        /// Get the full version number shown in the admin
        /// </summary>
        /// <returns></returns>
        public static string GetCurrentVersionNoFull()
        {
            //Installer for new versions and first startup
            // Get the current version
            var version = Assembly.GetExecutingAssembly().GetName().Version;

            // Store the value for use in the app
            return String.Format("{0}.{1}.{2}.{3}", version.Major, version.Minor, version.Build, version.Revision);
        }

        /// <summary>
        /// This checks whether the installer should be called, it stops people trying to call the installer
        /// when the application is already installed
        /// </summary>
        /// <returns></returns>
        public static bool ShowInstall()
        {
            //Installer for new versions and first startup
            // Store the value for use in the app
            var currentVersionNo = GetCurrentVersionNo();

            // Now check the version in the web.config
            var previousVersionNo = PreviousVersionNo();

            // If the versions are different kick the installer into play
            return (currentVersionNo != previousVersionNo);
        }

        #endregion

        #region Files

        public static string MemberImage(string avatar, string email, Guid userId, int size)
        {
            if (!string.IsNullOrEmpty(avatar))
            {
                // Has an avatar image
                var imageSizeString = string.Format("?width={0}&crop=0,0,{0},{0}", size);
                var memberImageUrl = Url.Combine(CDN_ROOT_URL,
                    ConfigurationManager.AppSettings["ImageBlobContainerName"],
                    GetUploadBlobDirectory(userId), avatar);
                _log.DebugFormat("memberImageUrl: {0}", memberImageUrl);
                return memberImageUrl;
            }

            return StringUtils.GetGravatarImage(email, size);
        }


        public static string GetUploadBlobDirectory(Guid userId)
        {
            var uploadDirectory = string.Format("uploads/{0}", userId.ToString());
            _log.DebugFormat("uploadDirectory: {0}", uploadDirectory);
            return uploadDirectory;
        }

        public static UploadFileResult UploadFile(HttpPostedFileBase file,
            string uploadDirectoryPath,
            ILocalizationService localizationService,
            int? newSquareSize,
            bool onlyImages = false)
        {

            var upResult = new UploadFileResult { UploadSuccessful = true };

            try
            {
                var fileName = Path.GetFileName(file.FileName);
                if (fileName != null)
                {
                    //Before we do anything, check file size
                    if (file.ContentLength >
                        Convert.ToInt32(ConfigUtils.GetAppSetting("FileUploadMaximumFileSizeInBytes")))
                    {
                        //File is too big
                        upResult.UploadSuccessful = false;
                        upResult.ErrorMessage = localizationService.GetResourceString("Post.UploadFileTooBig");
                        return upResult;
                    }

                    // now check allowed extensions
                    var allowedFileExtensions = ConfigUtils.GetAppSetting("FileUploadAllowedExtensions");

                    if (onlyImages)
                    {
                        allowedFileExtensions = "jpg,jpeg,png,gif";
                    }
                    ImageFormat imageFormat = null;
                    string fileExtension = null;
                    if (!string.IsNullOrEmpty(allowedFileExtensions))
                    {
                        // Turn into a list and strip unwanted commas as we don't trust users!
                        var allowedFileExtensionsList = allowedFileExtensions.ToLower().Trim()
                            .TrimStart(',').TrimEnd(',').Split(',').ToList();

                        // Get the file extension
                        fileExtension = Path.GetExtension(fileName.ToLower());

                        // If can't work out extension then just error
                        if (string.IsNullOrEmpty(fileExtension))
                        {
                            upResult.UploadSuccessful = false;
                            upResult.ErrorMessage = localizationService.GetResourceString("Errors.GenericMessage");
                            return upResult;
                        }

                        // Remove the dot then check against the extensions in the web.config settings
                        fileExtension = fileExtension.TrimStart('.');
                        if (!allowedFileExtensionsList.Contains(fileExtension))
                        {
                            upResult.UploadSuccessful = false;
                            upResult.ErrorMessage =
                                localizationService.GetResourceString("Post.UploadBannedFileExtension");
                            return upResult;
                        }
                    }

                    switch (fileExtension)
                    {
                        case "jpg":
                        case "jpeg":
                            imageFormat = ImageFormat.Jpeg;
                            break;
                        case "png":
                            imageFormat = ImageFormat.Png;
                            break;
                        case "gif":
                            imageFormat = ImageFormat.Gif;
                            break;
                    };

                    // Sort the file name
                    var newFileName = string.Format("{0}_{1}", GuidComb.GenerateComb(),
                        fileName.Trim(' ').Replace("_", "-").Replace(" ", "-").ToLower());
                    _log.DebugFormat("uploadDirectoryPath: {0}, newFileName: {1}", uploadDirectoryPath, newFileName);
                    var blobName = Url.Combine(uploadDirectoryPath, newFileName);
                    _log.DebugFormat("blobName: {0}", blobName);

                    // Save the file to disk
                    //file.SaveAs(path);

                    // Retrieve storage account from connection string.
                    var storageAccount = CloudStorageAccount.Parse(ConfigurationManager.AppSettings["StorageConnectionString"]);

                    // Create the blob client.
                    var blobClient = storageAccount.CreateCloudBlobClient();
                    // Retrieve reference to a previously created container.
                    var containerName = ConfigurationManager.AppSettings["ImageBlobContainerName"];
                    var container = blobClient.GetContainerReference(containerName);

                    // Retrieve reference to a blob named "myblob".
                    //To add on to what Egon said, 
                    //simply create your blob called "folder/1.txt", and it will work. No need to create a directory.
                    //var blobDirectory = container.GetDirectoryReference("");

                    var blockBlob = container.GetBlockBlobReference(blobName);
                    // Create or overwrite the "myblob" blob with contents from a local file.
                    if (newSquareSize.HasValue)
                    {
                        using (var fileStream = file.InputStream)
                        using (var image = Image.FromStream(fileStream).ScaleToSquare(newSquareSize.Value))
                        using (var memoryStream = new MemoryStream())
                        {
                            _log.DebugFormat("imageFormat: {0}", imageFormat);
                            image.Save(memoryStream, imageFormat);
                            _log.DebugFormat("memoryStream.Length: {0}", memoryStream.Length);
                            blockBlob.UploadFromByteArray(memoryStream.ToArray(), 0, (int)memoryStream.Length);
                        }

                    }
                    else
                    {
                        using (var fileSteam = file.InputStream)
                        {
                            blockBlob.UploadFromStream(fileSteam);
                        }
                    }

                    var fileUrl = Url.Combine(BLOB_ROOT_URL, containerName, blobName);
                    _log.DebugFormat("uploaded fileUrl: {0}", fileUrl);

                    upResult.UploadedFileName = newFileName;
                    upResult.UploadedFileUrl = fileUrl;
                }

            }
            catch (Exception ex)
            {
                upResult.ErrorMessage = ex.Message;
                upResult.UploadSuccessful = false;
                _log.Error(ex);
            }

            return upResult;


        }

        public static UploadFileResult UploadFile(HttpPostedFileBase file,
            string uploadDirectoryPath, ILocalizationService localizationService, bool onlyImages = false)
        {
            return UploadFile(file, uploadDirectoryPath, localizationService, null, onlyImages);
        }

        #endregion
    }
}