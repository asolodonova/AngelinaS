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

namespace WpfApp3
{
    /// <summary>
    /// Логика взаимодействия для Window1.xaml
    /// </summary>
    public partial class Window1 : Window
    {
        public Window1()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Window2 window2 = new Window2();
            this.Visibility = Visibility.Hidden;
            window2.Show();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Window2 window2 = new Window2();
            this.Visibility = Visibility.Hidden;
            window2.Show();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Window4 window4 = new Window4();
            this.Visibility = Visibility.Hidden;
            window4.Show();
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            Window5 window5 = new Window5();
            this.Visibility = Visibility.Hidden;
            window5.Show();
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            MainWindow MainWindow = new MainWindow();
            this.Visibility = Visibility.Hidden;
            MainWindow.Show();
        }
    }
}
