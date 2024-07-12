using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel.Design;
using System.Linq;
using System.Text;
using System.Text.Encodings;
using System.Text.Unicode;
using System.Net.NetworkInformation;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Demo.Nav_Flyout;
using System.Timers;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.CommunityToolkit.Extensions;

namespace Demo.Nav_Flyout
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class HomePage : ContentPage
    {
        //private Timer timer;
        public ObservableCollection<Class1> props;

        public HomePage()
        {
            InitializeComponent();
            FetchDataFromDatabase();
            makkodbaslik.Text = "Makine\nKodu";
            verimbaslik.Text = "Verim%";
            onlinedurusbaslik.Text = "Online\nDuruş";
            maxdevirbaslik.Text = "Max\nDevir";
            perverimbaslik.Text = "Per.\nVerim";
            toplamdurusbaslik.Text = "Toplam\nDuruş";
            plansizdurusbaslik.Text = "Plansız\nDuruş";
            //LoadDataFromDatabase();
            //DenemeLİste.ItemsSource = props;

            //timer = new Timer(60000);
            //timer.Elapsed += TimerElapsed;
            //timer.AutoReset = true;
            //timer.Start();
        }
        //private void TimerElapsed(object sender, ElapsedEventArgs e)
        //{
        //    // Burada ListView'inizi güncelleyin
        //    props = new ObservableCollection<Class1>();
        //    DenemeLİste.ItemsSource = null;
        //    LoadDataFromDatabase();
        //    DenemeLİste.ItemsSource = props;

        //}

        private void FetchDataFromDatabase()
        {

            SqlConnection connf = new SqlConnection(Application.Current.Properties["ConnectionString"].ToString());
            connf.Open();
            string query = "SELECT amir, vardiyatur, tarih FROM vardiya WHERE islem=0";
            using (SqlCommand cmdf = new SqlCommand(query, connf))
            {
                try
                {
                    SqlDataReader reader = cmdf.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            string value = reader["vardiyatur"].ToString();
                            string value2 = reader["amir"].ToString();
                            string value3 = reader["tarih"].ToString();

                            vardiyalabel.Text = value;
                            amirlabel.Text = value2;
                            tarihlabel.Text = value3;
                        }
                    }
                }
                catch (Exception ex)
                {
                    DisplayAlert("HATA !", "Amir, Vardiya ve ya Tarih bilgileri alınırken hata oluştu\nDetaylar :" + ex.Message, "TAMAM");
                }
            }

        }


        private void LoadDataFromDatabase()
        {
            try
            {

                SqlConnection conn = new SqlConnection(Application.Current.Properties["ConnectionString"].ToString());
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM vardiya Where islem=0");
                cmd.Connection = conn;
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        int verimval = Convert.ToInt32(reader["verim"]);

                        Color renk;
                        if (verimval > 85)
                        {
                            renk = Color.Green;
                        }
                        else if (verimval > 70)
                        {
                            renk = Color.Orange;
                        }
                        else
                        {
                            renk = Color.Red;
                        }

                        Class1 item = new Class1
                        {
                            makkod = Convert.ToInt32(reader["makkod"]),
                            dev = Convert.ToInt32(reader["dev"]),
                            gecidurussay = Convert.ToInt32(reader["gecidurussay"]),
                            perisim = reader["perisim"].ToString(),
                            kimlik = Convert.ToInt32(reader["kimlik"]),
                            verim = Convert.ToInt32(reader["verim"]),
                            makad = reader["makad"].ToString(),
                            planlidurus = Convert.ToInt32(reader["planlidurus"]),
                            plansizdurus = Convert.ToInt32(reader["plansizdurus"]),
                            makverim = Convert.ToInt32(reader["makverim"]),
                            tursay = Convert.ToInt32(reader["tursay"]),
                            ideal = Convert.ToInt32(reader["ideal"]),
                            maxdev = Convert.ToInt32(reader["maxdev"]),
                            toplamdurus = Convert.ToInt32(reader["toplamdurus"]),
                            perverim = Convert.ToInt32(reader["perverim"]),
                            acsaat = Convert.ToDateTime(reader["acsaat"]),
                            fverim = Convert.ToInt32(reader["verim"]),
                            renk = renk

                        };
                        //int verimval = Convert.ToInt32(item.verim);
                        //if (verimval > 85)
                        //{
                        //   item.renk = Color.Green;
                        //}
                        //else if (verimval > 70)
                        //{
                        //    item.renk = Color.Yellow;
                        //}
                        //else
                        //{
                        //    item.renk = Color.Red;
                        //}
                        props.Add(item);
                    }
                }

            }
            catch (SqlException ex)
            {
                DisplayAlert("HATA", ex.Message, "tamam");
            }
        }

        private void DenemeLİste_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            var secilen = e.SelectedItem as Class1;
            DisplayAlert("Seçilen :", $"makkine kod : {secilen.makkod}\npersonel : {secilen.perisim}\nTeorik Devir : {secilen.dev}\nMakine Adı : {secilen.makad}\nPlanlı Duruş : {secilen.planlidurus}\nPlansız Duruş : {secilen.plansizdurus}\nMakine Verimi : {secilen.makverim}\nTur sayısı : {secilen.tursay}\nİdeal : {secilen.ideal}\nToplam Duruş : {secilen.toplamdurus}\nPersonel Verimi : {secilen.perverim}", "TAMAM");

            Application.Current.Properties["makkod"] = secilen.makkod;
            Application.Current.Properties["kimlik"] = secilen.kimlik;
            Application.Current.Properties["devir"] = secilen.dev;
        }

        protected override async void OnAppearing()
        {

            base.OnAppearing();
            CStringlabel.Text = Application.Current.Properties["ConnectionString"].ToString();
            props = new ObservableCollection<Class1>();
            DenemeLİste.ItemsSource = null;
            LoadDataFromDatabase();
            DenemeLİste.ItemsSource = props;
            await Task.Delay(2000);
            DenemeLİste.IsRefreshing = false;

        }

        private async void PulltoRefresh_Refreshing(object sender, EventArgs e)
        {
            PulltoRefresh.IsRefreshing= true;
            await Task.Delay(3000);
            PulltoRefresh.IsRefreshing = false;
        }

        private void DenemeLİste_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            var secilen =e.Item as Class1;
           // DisplayAlert("SEÇİLEN MAKİNE BİLGİLERİ :", $"makkine kod : {secilen.makkod}\npersonel : {secilen.perisim}\nTeorik Devir : {secilen.dev}\nMakine Adı : {secilen.makad}\nPlanlı Duruş : {secilen.planlidurus}\nPlansız Duruş : {secilen.plansizdurus}\nMakine Verimi : {secilen.makverim}\nTur sayısı : {secilen.tursay}\nİdeal : {secilen.ideal}\nToplam Duruş : {secilen.toplamdurus}\nPersonel Verimi : {secilen.perverim}", "TAMAM");

            Application.Current.Properties["makkod"] = secilen.makkod;
            Application.Current.Properties["kimlik"] = secilen.kimlik;
            Application.Current.Properties["devir"] = secilen.dev;
            Application.Current.Properties["perisim"] = secilen.perisim;

            Navigation.ShowPopup(new PagePopup(secilen));
        }

        //protected override void OnDisappearing()
        //{
        //    base.OnDisappearing(); 
        //    timer.Stop();
        //}
    }
}