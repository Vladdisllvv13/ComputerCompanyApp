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
using ComputerCompanyApp.View;

namespace ComputerCompanyApp
{
    /// <summary>
    /// Логика взаимодействия для AssemblerWindow.xaml
    /// </summary>
    public partial class AssemblerWindow : Window
    {
        ComputerCompanyEntities1 ent = new ComputerCompanyEntities1();

        public AssemblerWindow()
        {
            InitializeComponent();
        }

        private void AssemblerWindow_Loaded(object sender, RoutedEventArgs e)
        {
            var techniqueQuery = from technique in ent.Technique select new {technique.ID, technique.Name, technique.SalePrice, technique.Amount};
            dg_Technique.ItemsSource = techniqueQuery.ToList();
        }

        private void AddTechnique_Click(object sender, RoutedEventArgs e)
        {
            AddTechniqueWindow window = new AddTechniqueWindow();
            window.Show();
        }
    }
}
