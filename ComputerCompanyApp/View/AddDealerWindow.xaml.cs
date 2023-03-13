using System;
using System.Text;
using System.Windows;
using ComputerCompanyApp.Model;

namespace ComputerCompanyApp.View
{
    /// <summary>
    /// Логика взаимодействия для AddDealerWindow.xaml
    /// </summary>
    public partial class AddDealerWindow : Window
    {
        private Dealer _currentDealer = new Dealer();
        public AddDealerWindow()
        {
            InitializeComponent();
            DataContext = _currentDealer;
        }

        private void bt_addDealer_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(_currentDealer.Name) || string.IsNullOrWhiteSpace(_currentDealer.Address) || string.IsNullOrWhiteSpace(_currentDealer.PhoneNumber))
                errors.AppendLine("Заполните все необходимые поля правильно");
            
            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            else
            {
                try
                {
                    ComputerCompanyEntities1.GetContext().Dealer.Add(_currentDealer);
                    ComputerCompanyEntities1.GetContext().SaveChanges();
                    (Owner as AdminWindow).UpdateTables();
                    Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }
    }
}
