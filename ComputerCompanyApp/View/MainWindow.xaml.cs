using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using ComputerCompanyApp.Model;

namespace ComputerCompanyApp
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        CompanyAuthorization authorization = new CompanyAuthorization();

        public MainWindow()
        {
            InitializeComponent();
        }

        private void bt_enter_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string login = tb_login.Text.Trim();
                string password = tb_password.Password.Trim();
                int successed = authorization.CheckUser(login, password);
                if (successed == 0)
                {
                    MessageBox.Show("Такого пользователя не существует");
                }
                else
                {
                    switch (successed)
                    {
                        case 1:
                            AdminWindow adminWindow = new AdminWindow();
                            adminWindow.Show();
                            break;
                        case 3:
                            AssemblerWindow assemblerWindow = new AssemblerWindow();
                            assemblerWindow.Show();
                            break;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
