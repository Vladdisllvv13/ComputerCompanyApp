using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using ComputerCompanyApp.Model;
using ComputerCompanyApp.View;

namespace ComputerCompanyApp
{
    /// <summary>
    /// Логика взаимодействия для AdminWindow.xaml
    /// </summary>
    public partial class AdminWindow : Window
    {

        public AdminWindow()
        {
            InitializeComponent();
            UpdateTables();
        }

        private void bt_addDealer_Click(object sender, RoutedEventArgs e)
        {
            AddDealerWindow window = new AddDealerWindow();
            window.Owner = this;
            window.Show();
        }

        private void bt_addComponent_Click(object sender, RoutedEventArgs e)
        {
            AddComponentWindow window = new AddComponentWindow(null);
            window.Owner = this;
            window.Show();
        }

        private void bt_deleteDealer_Click(object sender, RoutedEventArgs e)
        {
            
            if (dg_Dealer.SelectedItem != null)
            {
                if (MessageBox.Show("Подтвердите удаление", "Уведомление", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                {
                    try
                    {
                        var dealersForRemove = dg_Dealer.SelectedItems.Cast<Dealer>().ToList();
                        ComputerCompanyEntities1.GetContext().Dealer.RemoveRange(dealersForRemove);
                        ComputerCompanyEntities1.GetContext().SaveChanges();
                        UpdateTables();
                        MessageBox.Show("Успешное удаление");
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.ToString());
                    }
                }
            }
            else
            {
                MessageBox.Show("Выберите строку для удаления");
            }
        }

        public void UpdateTables()
        {
            dg_Dealer.ItemsSource = ComputerCompanyEntities1.GetContext().Dealer.ToList();
            dg_Component.ItemsSource = ComputerCompanyEntities1.GetContext().Component.ToList();
        }

        private void bt_changeComponent_Click(object sender, RoutedEventArgs e)
        {
            AddComponentWindow window = new AddComponentWindow((sender as Button).DataContext as Component);
            window.Owner = this;
            window.Show();
        }
    }
}
