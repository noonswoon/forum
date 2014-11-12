using System;
using System.Collections.Generic;

namespace MVCForum.Domain.DomainModel
{
    public partial class PermissionSet : Dictionary<string, CategoryPermissionForRole>
    {
        public PermissionSet(IEnumerable<CategoryPermissionForRole> permissionsList)
        {
               foreach(var categoryPermissionForRole in permissionsList)
               {
                   try
                   {
                       this.Add(categoryPermissionForRole.Permission.Name, categoryPermissionForRole);
                   }
                   catch (Exception ex)
                   {

                   }
               }
        }
    }
}
