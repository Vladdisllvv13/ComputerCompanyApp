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
using System.Windows.Shapes;
using ComputerCompanyApp.Model;

namespace ComputerCompanyApp.View
{
    /// <summary>
    /// Логика взаимодействия для AddComponentWindow.xaml
    /// </summary>
    public partial class AddComponentWindow : Window
    {
        private Component _currentComponent = new Component();

        public AddComponentWindow(Component selectedComponent)
        {
            InitializeComponent();

            if(selectedComponent != null) _currentComponent = selectedComponent;

            DataContext = _currentComponent;
            cb_component.ItemsSource = ComputerCompanyEntities1.GetContext().ComponentType.ToList();
        }

        private void bt_addComponent_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (_currentComponent.Name == null)
                errors.AppendLine("Заполните все необходимые поля");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;
            }
            else
            {
                try
                {
                    ComputerCompanyEntities1.GetContext().Component.Add(_currentComponent);
                    ComputerCompanyEntities1.GetContext().SaveChanges();
                    MessageBox.Show("Сохранено");
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
