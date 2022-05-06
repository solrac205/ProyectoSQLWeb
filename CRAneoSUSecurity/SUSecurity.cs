using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRAneoSUSecurity
{
    public class Support_User
    {
        private string PasswordUser;
        private string UserName = "UserSupport";

        private string Gen_Pass_Support()
        {
            string PasswordCalculado = "Support" + string.Format("{0:yyyyMMdd}", DateTime.Now) + string.Format("{0:0#}", DateTime.Now.Hour) + "00";
            return PasswordCalculado;
        }
        public string UserSupportPassword
        {
            get
            {
                PasswordUser = Gen_Pass_Support();
                return PasswordUser;
            }
        }
        public string UserSupportName
        {
            get
            {
                return UserName;
            }
        }
    }
    public class Administrator_User
    {
        private string PasswordUser;
        private string UserName = "UserAdmin";

        private string Gen_Pass_Admin()
        {
            string PasswordCalculado = "Admin" + string.Format("{0:yyyyMMdd}", DateTime.Now) + string.Format("{0:0#}", DateTime.Now.Hour) + "00";
            return PasswordCalculado;
        }
        public string UserAdminPassword
        {
            get
            {
                PasswordUser = Gen_Pass_Admin();
                return PasswordUser;
            }
        }
        public string UserAdminName
        {
            get
            {
                return UserName;
            }
        }
    }
}
