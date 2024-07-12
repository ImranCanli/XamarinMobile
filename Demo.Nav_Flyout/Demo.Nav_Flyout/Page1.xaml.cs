using System;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.SqlClient;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Text.Encodings;
using System.Text.Unicode;
using System.Net.NetworkInformation;

namespace Demo.Nav_Flyout
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Page1 : ContentPage
    {
        public ObservableCollection<Class1> props;

        public Page1()
        {
            InitializeComponent();
            props = new ObservableCollection<Class1>();
            LoadDataFromDatabase();
            DenemeLİste.ItemsSource = props;
        }

        private void LoadDataFromDatabase()
        {
            try {
                //string ConnS = "Data Source=85.98.41.81;Initial Catalog=kablosuz;User ID=sa;Password=1453; Integrated Security=False";

                //using (SqlConnection con = new SqlConnection(ConnS))
                //{
                //    string query = "SELECT makkod, dev, gecidurussay, perisim FROM vardiya";

                //    using (SqlCommand cmd = new SqlCommand(query, con))
                //    {

                //        con.Open();

                //        using (SqlDataReader reader = cmd.ExecuteReader())
                //        {
                //            while (reader.Read())
                //            {
                //                Class1 item = new Class1
                //                {
                //                    makkod = Convert.ToInt32(reader["makkod"]),
                //                    dev = Convert.ToInt32(reader["dev"]),
                //                    gecidurussay = Convert.ToInt32(reader["gecidurussay"]),
                //                    perisim = reader["perisim"].ToString()
                //                };
                //                props.Add(item);
                //            }
                //        }
                //    }
                //}
                
                SqlConnection conn = new SqlConnection(Application.Current.Properties["ConnectionString"].ToString());
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM vardiya Where islem=0");
                cmd.Connection = conn;
                using(SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
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
                            perverim = Convert.ToInt32(reader["perverim"])
                        };
                        props.Add(item);
                    }
                }

            }
            catch(SqlException ex) {
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
    }
}
