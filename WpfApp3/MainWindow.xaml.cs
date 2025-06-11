using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;

namespace WpfApp3
{
    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        private string _login;
        public string Login
        {
            get => _login;
            set
            {
                _login = value;
                OnPropertyChanged();
            }
        }

        public ICommand LoginCommand { get; }

        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;

            LoginCommand = new RelayCommand(ExecuteLogin, CanExecuteLogin);

            // Инициализация placeholder'ов
            loginBox.GotFocus += RemoveText;
            loginBox.LostFocus += AddText;
            passwordBox.GotFocus += RemovePasswordText;
            passwordBox.LostFocus += AddPasswordText;

            AddText(null, null);
            AddPasswordText(null, null);
        }

        private bool CanExecuteLogin(object parameter)
        {
            return !string.IsNullOrWhiteSpace(Login) &&
                   !string.IsNullOrWhiteSpace(passwordBox.Password);
        }

        private void ExecuteLogin(object parameter)
        {
            // Реализация логики входа
            if (AuthenticateUser(Login, passwordBox.Password))
            {
                var Window1 = new Window1();
                Window1.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("Неверный логин или пароль", "Ошибка",
                              MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private bool AuthenticateUser(string login, string password)
        {
            // Здесь должна быть проверка в базе данных
            return !string.IsNullOrEmpty(login) && !string.IsNullOrEmpty(password);
        }

        // Placeholder логина
        public void RemoveText(object sender, RoutedEventArgs e)
        {
            if (loginBox.Text == "Введите ваш логин")
            {
                loginBox.Text = "";
                loginBox.Foreground = new SolidColorBrush(Colors.Black);
            }
        }

        public void AddText(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(loginBox.Text))
            {
                loginBox.Text = "Введите ваш логин";
                loginBox.Foreground = new SolidColorBrush(Colors.Gray);
            }
        }

        // Placeholder пароля
        private void RemovePasswordText(object sender, RoutedEventArgs e)
        {
            if (passwordBox.Password == "Введите пароль")
            {
                passwordBox.Password = "";
                passwordBox.Foreground = new SolidColorBrush(Colors.Black);
            }
        }

        private void AddPasswordText(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(passwordBox.Password))
            {
                passwordBox.Password = "Введите пароль";
                passwordBox.Foreground = new SolidColorBrush(Colors.Gray);
            }
        }

        private void RegisterButton_Click(object sender, RoutedEventArgs e)
        {
            var registerWindow = new RegisterWindow();
            registerWindow.ShowDialog();
        }

        private void ForgotPassword_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            var recoverWindow = new RecoverPasswordWindow();
            recoverWindow.ShowDialog();
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Window1 window1 = new Window1();
            this.Visibility = Visibility.Hidden;
            window1.Show();
        }
    }

    public class RelayCommand : ICommand
    {
        private readonly Action<object> _execute;
        private readonly Predicate<object> _canExecute;
        public RelayCommand(Action<object> execute, Predicate<object> canExecute = null)
        {
            _execute = execute ?? throw new ArgumentNullException(nameof(execute));
            _canExecute = canExecute;
        }

        public bool CanExecute(object parameter) => _canExecute == null || _canExecute(parameter);

        public void Execute(object parameter) => _execute(parameter);

        public event EventHandler CanExecuteChanged
        {
            add => CommandManager.RequerySuggested += value;
            remove => CommandManager.RequerySuggested -= value;
        }
    }
}
