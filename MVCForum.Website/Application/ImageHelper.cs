using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using log4net;

namespace MVCForum.Website.Application
{
    /// <summary>
    /// Summary description for ImageHelper
    /// </summary>
    public static class ImageHelper
    {
        private static readonly ILog Log = LogManager.GetLogger(typeof(ImageHelper).Name);
        public static Image ResizeImage(this Image srcImage, Size newSize)
        {
            var newImage = new Bitmap(newSize.Width, newSize.Height);
            using (var gr = Graphics.FromImage(newImage))
            {
                gr.SmoothingMode = SmoothingMode.HighQuality;
                gr.InterpolationMode = InterpolationMode.HighQualityBicubic;
                gr.PixelOffsetMode = PixelOffsetMode.HighQuality;
                gr.DrawImage(srcImage, new Rectangle(0, 0, newSize.Width, newSize.Height));
            }
            //save image
            return newImage;
        }

        public static Size GetNewSizeScaleToBound(Size imageSize, Size boundingBox)
        {
            double widthScale = 0, heightScale = 0;
            if (imageSize.Width != 0)
                widthScale = (double)boundingBox.Width / (double)imageSize.Width;
            if (imageSize.Height != 0)
                heightScale = (double)boundingBox.Height / (double)imageSize.Height;

            double scale = Math.Min(widthScale, heightScale);

            Size result = new Size((int)(imageSize.Width * scale),
                                   (int)(imageSize.Height * scale));
            return result;
        }

        public static Image ScaleToFit(this Image srcImage, Size boundingSize, ImageFormat format)
        {
            if (srcImage.Size.Width <= boundingSize.Width
                && srcImage.Size.Height <= boundingSize.Height)
            {
                Log.Debug("not resize");
                return srcImage;
            }

            var newSize = GetNewSizeScaleToBound(srcImage.Size, boundingSize);
            return ResizeImage(srcImage, newSize);
        }


        public static Size GetNewSizeScaleToBoundLetImageBigger(Size imageSize, Size boundingBox)
        {
            double widthScale = 0, heightScale = 0;
            if (imageSize.Width != 0)
                widthScale = boundingBox.Width / (double)imageSize.Width;
            if (imageSize.Height != 0)
                heightScale = boundingBox.Height / (double)imageSize.Height;

            var scale = Math.Max(widthScale, heightScale);
            var result = new Size((int)(imageSize.Width * scale),
                                   (int)(imageSize.Height * scale));
            return result;
        }

        public static Image CropImage(this Image srcImage, Rectangle cropArea)
        {
            var target = new Bitmap(cropArea.Width, cropArea.Height);
            using (Graphics g = Graphics.FromImage(target))
            {
                g.DrawImage(srcImage, new Rectangle(0, 0, target.Width, target.Height), cropArea, GraphicsUnit.Pixel);
            }
            return target;
        }


        public static Image ScaleToSquare(this Image srcImage, int squareSize)
        {
            //if size of image one dimension less than squqare, use min 
            var minDimension = Math.Min(srcImage.Width, srcImage.Height);
            if (minDimension <= squareSize)
            {
                squareSize = minDimension;
            }

            var boundingSize = new Size(squareSize, squareSize);
            var newSize = GetNewSizeScaleToBoundLetImageBigger(srcImage.Size, boundingSize);
            var newImage = ResizeImage(srcImage, newSize);
            //crop to fit 
            //var cropArea = 
            Rectangle cropArea;
            int x = 0;
            int y = 0;
            if (newImage.Width < newImage.Height)
            {
                //cut top and bottom of image
                //(400 - 320)/2 = y
                y = (newImage.Height - newImage.Width) / 2;
                cropArea = new Rectangle(x, y, newImage.Width, newImage.Width);
                return CropImage(newImage, cropArea);
            }

            if (newImage.Width > newImage.Height)
            {
                //cut lef and right of image
                //(400 - 320)/2 = y
                x = (newImage.Width - newImage.Height) / 2;
                cropArea = new Rectangle(x, y, newImage.Height, newImage.Height);

                return CropImage(newImage, cropArea);
            }

            //no need to crop return it
            return newImage;
        }
    }
}