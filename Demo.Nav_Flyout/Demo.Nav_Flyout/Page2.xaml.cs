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


using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.CommunityToolkit.Extensions;

namespace Demo.Nav_Flyout
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class Page2 : ContentPage
	{
        public ObservableCollection<Class1> makines;
        public List<Vardiya> vard = new List<Vardiya>();

        public int vardindeks;
        public string vardname;
        public DateTime tarih;

		public Page2 ()
		{
			InitializeComponent ();

            vard.Add(new Vardiya
            {
                vardiya= "A",
            });
            vard.Add(new Vardiya
            {
                vardiya = "B",
            });
            vard.Add(new Vardiya
            {
                vardiya = "C",
            });
            VardiyaPicker.ItemsSource = vard;
        }

        private async void LoadDataFromDatabase()
        {
            try 
            {
                SqlConnection cona = new SqlConnection (Application.Current.Properties["ConnectionString"].ToString());
                cona.Open ();
                SqlCommand cmda = new SqlCommand("SELECT * FROM vardiya WHERE vardiyatur=@vardiyatur AND tarih=@tarih");
                cmda.Connection = cona;
                cmda.Parameters.Clear();
                cmda.Parameters.AddWithValue("@vardiyatur", vardname);
                cmda.Parameters.AddWithValue("@tarih", tarih);
                

                using(SqlDataReader reader = cmda.ExecuteReader ())
                {
                    while (reader.Read ())
                    {
                        int verimval = Convert.ToInt32(reader["verim"]);
                        Color renk;
                        if (verimval > 85)
                        {
                            renk = Color.Green;
                        }
                        else if(verimval > 70)
                        {
                             renk = Color.Orange;
                        }
                        else
                        {
                            renk = Color.Red;
                        }

                        Class1 oge = new Class1
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
                            renk = renk
                        };
                        makines.Add(oge);
                    }
                }
            }
            catch(Exception ex) 
            {
                await DisplayAlert("HATA !", ex.Message, "TAMAM");
            } 
         
        }

        private void ArsivListe_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            var secildi = e.Item as Class1;

            //DisplayAlert("SEÇİLEN MAKİNE BİLGİLERİ :", $"makkine kod : {secildi.makkod}\npersonel : {secildi.perisim}\nTeorik Devir : {secildi.dev}\nMakine Adı : {secildi.makad}\nPlanlı Duruş : {secildi.planlidurus}\nPlansız Duruş : {secildi.plansizdurus}\nMakine Verimi : {secildi.makverim}\nTur sayısı : {secildi.tursay}\nİdeal : {secildi.ideal}\nToplam Duruş : {secildi.toplamdurus}\nPersonel Verimi : {secildi.perverim}", "TAMAM");

            Navigation.ShowPopup(new PagePopup(secildi));
        }

        private void VardiyaPicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            vardindeks = VardiyaPicker.SelectedIndex;
            vardname = vard[vardindeks].vardiya;
        }

        private void TarihPicker_DateSelected(object sender, DateChangedEventArgs e)
        {
            tarih = TarihPicker.Date;
        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            if (vardname != null && tarih != null) 
            { 
            makines = new ObservableCollection<Class1>();
            LoadDataFromDatabase();
            ArsivListe.ItemsSource = makines;
            uyari.IsVisible = false;
            }
            else
            {
                DisplayAlert("UYARI!", "Lütfen tarih ve Vardiya değeri seçiniz", "TAMAM");
            }
        }

        //private void DatePickButton_Clicked(object sender, EventArgs e)
        //{
        //    datepick.IsOpen = true;
        //}
    }
}