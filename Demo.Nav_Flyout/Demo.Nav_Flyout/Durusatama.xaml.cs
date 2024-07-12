using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Collections.ObjectModel;
using System.Data.SqlClient;
using System.Text.Encodings;
using System.Text.Unicode;
using System.Net.NetworkInformation;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Demo.Nav_Flyout
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Durusatama : ContentPage
    {
        public int selectednedenindex;
        public string neden;

        public int selectedturindex;
        public string tur;


        public List<DurusAd> nedenlist = new List<DurusAd>();
        public List<TurAd> turler = new List<TurAd>();
        public List<string> dataList = new List<string>();

        public ObservableCollection<Duruslar> duruslars;

        private int indeks;
        public Durusatama(int indeks)
        {

            InitializeComponent();
            this.indeks = indeks;
            duruslars = new ObservableCollection<Duruslar>();
            LoadDataFromDatabase();
            Durusliste.ItemsSource = duruslars;


            SqlConnection conne = new SqlConnection(Application.Current.Properties["ConnectionString"].ToString());
            conne.Open();
            SqlCommand cmd = new SqlCommand("SELECT durusad FROM planliduruslar");
            cmd.Connection = conne;
            using(SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    DurusAd itemm = new DurusAd
                    {
                        durusad = reader["durusad"].ToString(),
                    };
                    nedenlist.Add(itemm);
                }
            }
            NedenPicker.ItemsSource = nedenlist;
            conne.Close();



            //nedenlist.Add(new DurusAd
            //{
            //    durusad = "ELEKTRİK ARIZASI",
            //});
            //nedenlist.Add(new DurusAd
            //{
            //    durusad = "MAKİNE AYARI",
            //});
            //nedenlist.Add(new DurusAd
            //{
            //    durusad = "MEKANİK ARIZA",
            //});
            //nedenlist.Add(new DurusAd
            //{
            //    durusad = "İĞNE DEĞİŞİMİ",
            //});
            //nedenlist.Add(new DurusAd
            //{
            //    durusad = "BAKIM-ONARIM",
            //});
            //nedenlist.Add(new DurusAd
            //{
            //    durusad = "İPLİK YETERSİZLİĞİ",
            //});
            //nedenlist.Add(new DurusAd
            //{
            //    durusad = "LİKRA YETERSİZLİĞİ",
            //});
            //NedenPicker.ItemsSource = nedenlist;


            turler.Add(new TurAd
            {
                tur="PLANLI DURUŞ"
            });
            turler.Add(new TurAd
            {
                tur = "PLANSIZ DURUŞ"
            });
            TurPicker.ItemsSource = turler;

            makkodlabl.Text = Application.Current.Properties["makkod"].ToString();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            denemelabel.Text = indeks.ToString();
            denemelabel2.Text = Application.Current.Properties["kimlik"].ToString();

        }

        private void LoadDataFromDatabase()
        {

            //Data Source=tcp:" + Application.Current.Properties["clientIP"] + ";Initial Catalog=" + Application.Current.Properties["clientDb"] + ";User ID=" + Application.Current.Properties["clientuser"] + ";Password=" + Application.Current.Properties["clientpass"]

            try
            {

                if (indeks == 1)
                {
                    //DisplayAlert("Koşula Girildi.", $"Alınan İndeks: {indeks.ToString()}", "TAMAM");

                    SqlConnection conn = new SqlConnection(Application.Current.Properties["ConnectionString"].ToString());
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("SELECT * FROM duruslar WHERE maknokimlik=@kimlik AND tur='PLANSIZ DURUŞ'");
                    cmd.Parameters.AddWithValue("@kimlik", Application.Current.Properties["kimlik"]);
                    cmd.Connection = conn;
                    //cmd.Parameters.Clear();
                    
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Duruslar item = new Duruslar
                            {
                                tur = reader["tur"].ToString(),
                                sure = Convert.ToInt32(reader["sure"]),
                                neden = reader["neden"].ToString(),
                                aciklama = reader["aciklama2"].ToString(),
                                maknokimlik = Convert.ToInt32(reader["maknokimlik"]),
                                kimlik = Convert.ToInt32(reader["kimlik"])
                            };
                            if (DateTime.TryParse(reader["tarih"].ToString(), out DateTime tarih))
                            {
                                item.tarih = tarih;
                            }
                            duruslars.Add(item);
                        }
                    }
                }
                else if(indeks == 2)
                {
                   //DisplayAlert("Koşula Girildi.", $"Alınan İndeks: {indeks.ToString()}", "TAMAM"); 

                    SqlConnection conn2 = new SqlConnection(Application.Current.Properties["ConnectionString"].ToString());
                    conn2.Open();
                    SqlCommand cmd2 = new SqlCommand("SELECT * FROM duruslar WHERE maknokimlik=@kimlik AND tur='PLANLI DURUŞ'");
                    cmd2.Parameters.Clear();
                    cmd2.Parameters.AddWithValue("@kimlik", Application.Current.Properties["kimlik"]);
                    cmd2.Connection = conn2;
                    using (SqlDataReader reader2 = cmd2.ExecuteReader()) 
                    {
                        while (reader2.Read())
                        {
                            Duruslar item2 = new Duruslar
                            {
                                tur = reader2["tur"].ToString(),
                                sure = Convert.ToInt32(reader2["sure"]),
                                neden = reader2["neden"].ToString(),
                                aciklama = reader2["aciklama2"].ToString(),
                                maknokimlik = Convert.ToInt32(reader2["maknokimlik"]),
                                kimlik = Convert.ToInt32(reader2["kimlik"])
                            };
                            if (DateTime.TryParse(reader2["tarih"].ToString(), out DateTime tarih))
                            {
                                item2.tarih = tarih;
                            }
                            duruslars.Add(item2);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                DisplayAlert("Hata", ex.Message, "Tamam");
            }
        }


        private void NedenPicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectednedenindex = NedenPicker.SelectedIndex;
            neden = nedenlist[selectednedenindex].durusad;
            //DisplayAlert("Koşula girildi !", $"Koşula girildi ve alınan değer :{neden.ToString()}", "TAMAM");

        }


        private void TurPicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedturindex = TurPicker.SelectedIndex;
            tur = turler[selectedturindex].tur;
            //DisplayAlert("Koşula girildi !", $"Koşula girildi ve alınan değer :{tur.ToString()}", "TAMAM");

        }






        private async void Durusliste_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            //var picker2 = this.FindByName<Picker>("TurPicker");
            //var selectedvalue2 = picker2.SelectedItem as string;
            //var picker = this.FindByName<Picker>("NedenPicker");
            //var selectedvalue = picker.SelectedItem as string;

            string planli = "PLANLI DURUŞ";
            string plansiz = "PLANSIZ DURUŞ";

            var secilmis = e.Item as Duruslar;



            if ((tur != null) || (neden != null)) { 
            //await DisplayAlert("Pickerlardan alınan değerler :", $"Tür Picker :{tur.ToString()}\nNeden Picker :{neden.ToString()}\n Kimlik :{Application.Current.Properties["kimlik"].ToString()}", "TAMAM");


            try
            {


                if (indeks == 2)
                {
                    if (tur == "PLANSIZ DURUŞ")
                    {
                        //await DisplayAlert("Koşula girildi !", $"Koşula girildi ve alınan değer :{tur.ToString()}", "TAMAM");

                        SqlConnection conn2 = new SqlConnection(Application.Current.Properties["ConnectionString"].ToString());
                        conn2.Open();
                        SqlCommand cmd3 = new SqlCommand("UPDATE vardiya SET planlidurus=planlidurus-@sure,plansizdurus=plansizdurus+@sure WHERE kimlik=@maknokimlik");
                        cmd3.Connection = conn2;
                        cmd3.Parameters.Clear();
                        cmd3.Parameters.AddWithValue("@sure", secilmis.sure);
                        cmd3.Parameters.AddWithValue("@maknokimlik", secilmis.maknokimlik);


                        SqlCommand cmdplanli = new SqlCommand("UPDATE duruslar SET neden=@neden, tur=@tur WHERE maknokimlik=@kimlik");
                        cmdplanli.Connection = conn2;
                        cmdplanli.Parameters.Clear();
                        cmdplanli.Parameters.AddWithValue("@neden", neden);
                        cmdplanli.Parameters.AddWithValue("@tur", plansiz);
                        cmdplanli.Parameters.AddWithValue("@kimlik", Application.Current.Properties["kimlik"]);

                        int affcteds = cmdplanli.ExecuteNonQuery();

                        int affectedrows = cmd3.ExecuteNonQuery();
                        if ((affectedrows > 0) && (affcteds > 0))
                        {
                            await DisplayAlert("İşlem Başarılı !", "Güncelleme işlemi tamamlandı", "TAMAM");
                            await Navigation.PopModalAsync();
                        }

                    }
                    else if (tur == "PLANLI DURUŞ")
                    {
                        SqlConnection conn2 = new SqlConnection(Application.Current.Properties["ConnectionString"].ToString());
                        conn2.Open();
                        SqlCommand cmd2 = new SqlCommand("UPDATE duruslar SET neden=@neden WHERE maknokimlik=@kimlik");
                        cmd2.Connection = conn2;
                        cmd2.Parameters.Clear();
                        cmd2.Parameters.AddWithValue("@neden", neden);
                        cmd2.Parameters.AddWithValue("@kimlik", Application.Current.Properties["kimlik"]);
                        int etkilenen = cmd2.ExecuteNonQuery();
                        if (etkilenen > 0)
                        {
                            await DisplayAlert("İşlem Başarılı !", "Güncelleme işlemi tamamlandı.", "TAMAM");
                            await Navigation.PopModalAsync();
                        }
                    }
                }

                else if (indeks == 1)
                {

                    if (tur == "PLANSIZ DURUŞ")
                    {
                        SqlConnection conn4 = new SqlConnection(Application.Current.Properties["ConnectionString"].ToString());
                        conn4.Open();
                        SqlCommand cmd4 = new SqlCommand("UPDATE duruslar SET neden=@neden WHERE maknokimlik=@kimlik");
                        cmd4.Connection = conn4;
                        cmd4.Parameters.Clear();
                        cmd4.Parameters.AddWithValue("@neden", neden);
                        cmd4.Parameters.AddWithValue("@kimlik", Application.Current.Properties["kimlik"]);
                        int etkilenen4 = cmd4.ExecuteNonQuery();

                        if (etkilenen4 > 0)
                        {
                            await DisplayAlert("İşlem Başarılı !", "Güncelleme işlemi tamamlandı.", "TAMAM");
                            await Navigation.PopModalAsync();
                        }
                    }
                    else if (tur == "PLANLI DURUŞ")
                    {
                        SqlConnection conn5 = new SqlConnection(Application.Current.Properties["ConnectionString"].ToString());
                        conn5.Open();
                        SqlCommand cmd5 = new SqlCommand("UPDATE vardiya SET plansizdurus=plansizdurus-@sure, planlidurus=planlidurus+@sure WHERE kimlik=@maknokimlik");
                        cmd5.Connection = conn5;
                        cmd5.Parameters.Clear();
                        cmd5.Parameters.AddWithValue("@sure", secilmis.sure);
                        cmd5.Parameters.AddWithValue("@maknokimlik", secilmis.maknokimlik);
                        int etkilenen5 = cmd5.ExecuteNonQuery();

                        SqlCommand cmd6 = new SqlCommand("UPDATE duruslar SET neden=@neden, tur=@tur WHERE maknokimlik=@kimlik");
                        cmd6.Connection = conn5;
                        cmd6.Parameters.Clear();
                        cmd6.Parameters.AddWithValue("@kimlik", Application.Current.Properties["kimlik"]);
                        cmd6.Parameters.AddWithValue("@neden", neden);
                        cmd6.Parameters.AddWithValue("@tur", planli);
                        int etkilenen6 = cmd6.ExecuteNonQuery();

                        if ((etkilenen6 > 0) && (etkilenen5 > 0))
                        {
                            await DisplayAlert("İşlem Başarılı !", "Güncelleme işlemi tamamlandı.", "TAMAM");
                            await Navigation.PopModalAsync();
                        }

                    }

                    //SqlConnection conn2 = new SqlConnection("Data Source=tcp:85.98.41.81;Initial Catalog=oriz_yeni;User ID=sa;Password=1453;");
                    //conn2.Open();
                    //SqlCommand cmd3 = new SqlCommand("UPDATE duruslar SET neden=@neden, tur=@tur WHERE kimlik=@kimlik");
                    //cmd3.Connection= conn2;
                    //cmd3.Parameters.Clear();
                    //cmd3.Parameters.AddWithValue("@neden", selectedvalue);
                    //cmd3.Parameters.AddWithValue("@tur", plansiz);
                    //cmd3.Parameters.AddWithValue("@kimlik", Convert.ToInt32(secilmis.kimlik));
                    //int affectedrows = cmd3.ExecuteNonQuery();

                    //SqlCommand xmdplansiz = new SqlCommand("UPDATE duruslar SET neden=@neden, tur=@tur WHERE kimlik=@kimlik");
                    //if (affectedrows > 0)
                    //{
                    //    await DisplayAlert("İşlem Başarılı !", "Güncelleme işlemi tamamlandı", "TAMAM");
                    //    await Navigation.PopModalAsync();
                    //}

                }

            }
            catch (Exception ex)
            {
                await DisplayAlert("HATA", "Uygulamada hata oluştu\nDetaylar :" + ex.Message, "TAMAM");
            }

        }
            else
            {
               await DisplayAlert("Uyarı !", "Lütfen Tür ve Duruş nedeni seçiniz", "TAMAM");
            }

        }

    }
}