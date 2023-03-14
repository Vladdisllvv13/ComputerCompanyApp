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

        public AssemblerWindow()
        {
            InitializeComponent();
            UpdateTables();
        }

        private void AddTechnique_Click(object sender, RoutedEventArgs e)
        {
            AddTechniqueWindow window = new AddTechniqueWindow();
            window.Owner = this;
            window.Show();
        }

        public void UpdateTables()
        {
            dg_Technique.ItemsSource = ComputerCompanyEntities1.GetContext().Technique.ToList();
        }
    }
}
