using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Demo.Nav_Flyout
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class LoginPage : INotifyPropertyChanged
	{


		private string SQLIP;
		private string SQLUser;
        private string SQLPass;
        private string SQLDB;
        public string ConnectionString;

        public string sqlip
        {
            get { return SQLIP; }
            set
            {
                SQLIP = value;
                OnPropertyChanged(nameof(sqlip));
            }
        }

        public string sqluser
        {
            get { return SQLUser; }
            set
            {
                SQLUser = value;
                OnPropertyChanged(nameof(sqluser));
            }
        }

        public string sqlpass
        {
            get { return SQLPass; }
            set
            {
                SQLPass = value;
                OnPropertyChanged(nameof(sqlpass));
            }
        }

        public string sqldb
        {
            get { return SQLDB; }
            set
            {
                SQLDB = value;
                OnPropertyChanged(nameof(sqldb));
            }
        }


        public ICommand LoginCommand { get; }

        public LoginPage ()
		{
			InitializeComponent ();
            //string dosyaYolu = System.IO.Path.Combine(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal), "veriler.txt");

            //if(System.IO.File.Exists(dosyaYolu))
            //{
            //    ConnectionString = System.IO.File.ReadAllText(dosyaYolu);
            //    Application.Current.Properties["ConnectionString"] = ConnectionString;

            //   Application.Current.MainPage = new HomePage();
            //}

            LoginCommand = new Command(Login);

		}
        private void Button_Clicked(object sender, EventArgs e)
        {
            SQLIP = SQLIPEntry.Text;
            SQLUser = SQLUserEntry.Text;
            SQLPass = SQLPassEntry.Text;
            SQLDB = SQLDBEntry.Text;
            Login();
        }

        private void Login()
        {

            if (!string.IsNullOrEmpty(SQLIP) && !string.IsNullOrEmpty(SQLUser) && !string.IsNullOrEmpty(SQLPass) && !string.IsNullOrEmpty(SQLDB))
            {
                //string ConnectionString = "Data Source=tcp:94.73.151.2;Initial Catalog=u7421706_talep;User ID=u7421706_talep;Password=VMtv06V5EBor77Z;";
                //string query = "SELECT kadi, parola, sqlip, oriz_database, oriz_username, oriz_parola FROM login_yeni WHERE kadi=@kadi AND parola=@parola";

                Application.Current.Properties["ConnectionString"] = "Data Source=tcp:"+SQLIP.ToString()+";Initial Catalog="+SQLDB.ToString()+";User ID="+SQLUser.ToString()+";Password="+SQLPass.ToString();

                //SqlConnection connection = new SqlConnection(ConnectionString);
                //connection.Open();
                //SqlCommand command = new SqlCommand(query);
                //command.Connection = connection;
                //command.Parameters.Clear();
                //command.Parameters.AddWithValue("@kadi", username);
                //command.Parameters.AddWithValue ("@parola", password);
                //SqlDataReader reader = command.ExecuteReader();
                //if(reader.HasRows)
                //{
                //    while (reader.Read())
                //    {
                //        Application.Current.Properties["clientIP"] = reader["sqlip"].ToString();
                //        Application.Current.Properties["clientuser"] = reader["oriz_username"].ToString();
                //        Application.Current.Properties["clientpass"] = reader["oriz_parola"].ToString();
                //        Application.Current.Properties["clientDb"] = reader["oriz_database"].ToString();
                //    }
                //}

                

                Application.Current.MainPage = new MainPage();
            }

        }

        private void Button_Clicked_1(object sender, EventArgs e)
        {
            //string path = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Personal),"veriler.txt");
            string path = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
            string filename = Path.Combine(path, "baglanti.txt");
            bool exists = File.Exists(filename);

            string _fileName = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "baglanti.txt");

            if (File.Exists(_fileName))
            {
                Application.Current.Properties["ConnectionString"] = File.ReadAllText(_fileName);
                Application.Current.MainPage = new MainPage();
            }
            else
            {
                DisplayAlert("Bağlantı öğesi bulunamadı", "Lütfen önce bağlantı ekleyiniz. Eğer daha önce eklediyseniz uygulamayı yeniden başlatınız.", "TAMAM");
            }




            //if (exists)
            //{
                

            //    string data = File.ReadAllText(path);
            //    Application.Current.Properties["ConnectionString"] = data;

            //    DisplayAlert("Koşula girildi", "Böyle bir dosya var !!", "TAMAM");

            //    Application.Current.MainPage = new MainPage();
            //}
            //else
            //{
            //    DisplayAlert("Bağlantı öğesi bulunamadı", "Cihazınızda bağlantı dosyasının bulunup bulunmadığını kontrol ediniz.", "TAMAM");
            //}


        }

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new NavigationPage(new Page3()));
        }
    }
}