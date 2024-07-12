using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Demo.Nav_Flyout
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Deviratama : ContentPage
    {
        public Deviratama()
        {
            InitializeComponent();
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {
            if (devirvalue.Text != null)
            {
                SqlConnection conn = new SqlConnection(Application.Current.Properties["ConnectionString"].ToString());
                conn.Open();
                SqlCommand cmd = new SqlCommand("UPDATE vardiya SET dev=@dev WHERE kimlik=@kimlik");
                cmd.Connection = conn;
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@dev", devirvalue.Text);
                cmd.Parameters.AddWithValue("@kimlik", Application.Current.Properties["kimlik"]);
                int affectedrows = cmd.ExecuteNonQuery();
                if (affectedrows > 0)
                {
                    await DisplayAlert("İşlem Başarılı !", "Devir güncelleme işlemi tamamlandı.", "TAMAM");
                    await Navigation.PopModalAsync();
                }
            }
            else
            {
                await DisplayAlert("HATA!", "Lütfen geçerli bir değer giriniz", "TAMAM");
            }

        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            devirlabel.Text = Application.Current.Properties["makkod"].ToString();
            eskidevir.Text = Application.Current.Properties["devir"].ToString();
        }
    }
}