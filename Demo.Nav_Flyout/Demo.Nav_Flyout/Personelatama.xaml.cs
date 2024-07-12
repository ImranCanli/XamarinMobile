using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.Encodings;
using System.Text.Unicode;
using System.Net.NetworkInformation;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Demo.Nav_Flyout
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Personelatama : ContentPage
    {

        public ObservableCollection<Personel> people;
        //private MachineList _machineList;
        //CollectionView'den seçilen öğeden yeni sayfaya yönlendirme yaparken, Public AboutPage() kısmındakı paranteze "MachineList machinelist" ifadesini eklemeyi unutma!!!
        public Personelatama()
        {
            InitializeComponent();
            
            people = new ObservableCollection<Personel>();
            LoadDataFromDatabase();
            MyColl.ItemsSource = people;
            
        }


        private void LoadDataFromDatabase()
        {
            try 
            {
                SqlConnection conn = new SqlConnection(Application.Current.Properties["ConnectionString"].ToString());
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT kartno, ad, soyad, kimlik FROM kisiler");
                cmd.Connection = conn;
                using(SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Personel item = new Personel
                        {
                           kartno = Convert.ToInt32(reader["kartno"]),
                           ad = reader["ad"].ToString(),
                           soyad = reader["soyad"].ToString(),
                           kimlik = Convert.ToInt32(reader["kimlik"])
                        };
                        people.Add(item);
                    }
                }
            } 
            catch (Exception ex) 
            {
                DisplayAlert("Hata", ex.Message, "Tamam");
            }    
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            makkodlabl.Text = Application.Current.Properties["makkod"].ToString();
            denemelabel.Text = Application.Current.Properties["kimlik"].ToString();
            perisimlabl.Text = Application.Current.Properties["perisim"].ToString();
            //denemelabel.Text = $"Recieved Parameter 1: {_machineList.Name}, Parameter 2: {_machineList.Description}";
        }

        private async void MyColl_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            try
            {
                var secildi = e.Item as Personel;
                string isim = $"{secildi.ad} {secildi.soyad}";
                int perkodu = secildi.kartno;

                SqlConnection con = new SqlConnection(Application.Current.Properties["ConnectionString"].ToString());
                con.Open();
                SqlCommand cmd2 = new SqlCommand("UPDATE vardiya SET perkod=@perkod, perisim=@perisim WHERE kimlik=@kimlik");
                cmd2.Connection = con;
                cmd2.Parameters.AddWithValue("@perkod",perkodu);
                cmd2.Parameters.AddWithValue("@perisim", isim);
                cmd2.Parameters.AddWithValue("@kimlik", Application.Current.Properties["kimlik"]);
                int affectedrows = cmd2.ExecuteNonQuery();
                if (affectedrows > 0)
                {
                    await DisplayAlert("İşlem Başarılı !", "Personel güncelleme işlemi tamamlandı", "TAMAM");
                    await Navigation.PopModalAsync();
     
                }
            }
            catch(Exception ex) 
            {
                await DisplayAlert("HATA", "Uygulamada hata oluştu\nDetaylar :"+ex.Message, "TAMAM");
            }
            
        }
    }
}