using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using MVCForum.Domain.Constants;
using MVCForum.Domain.DomainModel;
using MVCForum.Domain.Interfaces.Services;
using MVCForum.Domain.Interfaces.UnitOfWork;
using MVCForum.Website.ViewModels;

namespace MVCForum.Website.Controllers
{
    public partial class StatsController : BaseController
    {
        private readonly ITopicService _topicService;
        private readonly IPostService _postService;

        public StatsController(ILoggingService loggingService, IUnitOfWorkManager unitOfWorkManager, IMembershipService membershipService,
            ILocalizationService localizationService, IRoleService roleService, ISettingsService settingsService, ITopicService topicService, IPostService postService) :
            base(loggingService, unitOfWorkManager, membershipService, localizationService, roleService, settingsService)
        {
            _topicService = topicService;
            _postService = postService;
        }

        //[ChildActionOnly]
        //[OutputCache(Duration = AppConstants.DefaultCacheLengthInSeconds)]
        public PartialViewResult GetMainStats()
        {
            var users = MembershipService.GetLatestUsers(10);
            users = users.Distinct(new MemberShipUserNameComparer()).ToList();

            var viewModel = new MainStatsViewModel
                                {
                                    LatestMembers = users.ToDictionary(o => o.UserName,
                                                                                                      o => o.NiceUrl),
                                    MemberCount = MembershipService.MemberCount(),
                                    TopicCount = _topicService.TopicCount(),
                                    PostCount = _postService.PostCount()
                                };
            return PartialView(viewModel);
        }

    }

    public class MemberShipUserNameComparer : IEqualityComparer<MembershipUser>
    {
        public bool Equals(MembershipUser x, MembershipUser y)
        {
            return x.UserName == y.UserName;
        }

        public int GetHashCode(MembershipUser obj)
        {
            return obj.UserName.GetHashCode();
        }
    }
}
