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
    /// Логика взаимодействия для AddTechniqueWindow.xaml
    /// </summary>
    public partial class AddTechniqueWindow : Window
    {
        private Technique _currentTechnique = new Technique();
        public AddTechniqueWindow()
        {
            InitializeComponent();
            DataContext = _currentTechnique;
            dg_Component.ItemsSource = ComputerCompanyEntities1.GetContext().Component.ToList();
        }

        private void bt_assembling_Click(object sender, RoutedEventArgs e)
        {
            if (dg_Component.SelectedItem != null)
            {
                try
                {
                    StringBuilder errors = new StringBuilder();

                    if (string.IsNullOrWhiteSpace(_currentTechnique.Name))
                        errors.AppendLine("Заполните все необходимые поля правильно");
                    if (_currentTechnique.SalePrice < 1 || _currentTechnique.SalePrice > 10000000)
                        errors.AppendLine("Введите цену от 1 до 10000000");
                    if (_currentTechnique.Amount < 1 || _currentTechnique.Amount > 100)
                        errors.AppendLine("Введите количество от 1 до 100");

                    if (errors.Length > 0)
                    {
                        MessageBox.Show(errors.ToString());
                        return;
                    }

                    else
                    {
                        var componentsForAssembling = dg_Component.SelectedItems.Cast<Component>().ToList();
                        ComputerCompanyEntities1.GetContext().Technique.Add(_currentTechnique);

                        foreach (var component in componentsForAssembling)
                        {
                            component.Amount -= _currentTechnique.Amount;
                            Assembling assembling = new Assembling { ID_Component = component.ID, ID_Technique = _currentTechnique.ID, Date = dp_AssemblingDate.SelectedDate };
                            ComputerCompanyEntities1.GetContext().Assembling.Add(assembling);
                        }

                        ComputerCompanyEntities1.GetContext().SaveChanges();
                        MessageBox.Show("Техника собрана");
                        (Owner as AssemblerWindow).UpdateTables();
                        Close();
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
            else
            {
                MessageBox.Show("Выберите компоненты");
            }
        }
    }
}
