using System.Linq;
using ComputerCompanyApp.Model;

namespace ComputerCompanyApp
{
    internal class CompanyAuthorization
    {
        public int CheckUser(string login, string password)
        {
            ComputerCompanyEntities1 ent = new ComputerCompanyEntities1();
            var auth = ent.Authorization;

            var user = auth.Where(x => x.Login == login && x.Password == password).FirstOrDefault();
            if (user != null)
            {

                return user.Employee.ID_Post;
            }
            else return 0;
        }
    }
}
