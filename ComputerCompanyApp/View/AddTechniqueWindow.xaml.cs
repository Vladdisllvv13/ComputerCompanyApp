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
        ComputerCompanyEntities1 ent = new ComputerCompanyEntities1();

        public AddTechniqueWindow()
        {
            InitializeComponent();
        }

        private void AddTechnique_Loaded(object sender, RoutedEventArgs e)
        {
            var componentQuery = from component in ent.Component select new { component.ID, component.ID_ComponentType, component.Name, component.Manufacturer, component.Amount };
            dg_Component.ItemsSource = componentQuery.ToList();
        }
    }
}
