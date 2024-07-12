using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Demo.Nav_Flyout
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Page3 : ContentPage
    {
        private string userinput;
        public Page3()
        {
            InitializeComponent();
        }
        private void CONNSEntry_TextChanged(object sender, TextChangedEventArgs e)
        {
            userinput = e.NewTextValue;
        }
        private async void Button_Clicked(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(userinput))
            {
                // Create a file name with the current date and time
                string fileName =  "baglanti.txt";

                // Get the path of the file in the device storage
                string filePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), fileName);

                if(!File.Exists(filePath)) 
                {
                    // Create a stream to write to the file
                    using (var stream = new FileStream(filePath, FileMode.Create, FileAccess.Write))
                    {
                        // Write the user input to the file as bytes
                        byte[] bytes = System.Text.Encoding.UTF8.GetBytes(userinput);
                        await stream.WriteAsync(bytes, 0, bytes.Length);
                    }

                    // Display a message to confirm that the file is saved
                    await DisplayAlert("İşlem başarılı !", "Bağlantı kaydedildi.", "TAMAM");
                    await Navigation.PopModalAsync();
                }
                else
                {
                   await DisplayAlert("HATA !", "Zaten kaydedilmiş bir bağlantınız var", "TAMAM");
                }
            }
            else
            {
                // Display a message to ask the user to enter some text
                await DisplayAlert("HATA", "LÜTFEN DEĞER GİRİNİZ", "TAMAM");
            }
        }

        private async void Button_Clicked_1(object sender, EventArgs e)
        {
            string fileName = "baglanti.txt";
            string filePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), fileName);

            if (File.Exists(filePath))
            {
                File.Delete(filePath);
                // Dosya başarıyla silindiğinde bir mesaj gösterebilirsiniz.
                await DisplayAlert("İşlem başarılı!", "Bağlantı dosyası silindi.", "TAMAM");
            }
            else
            {
                // Silinmek istenen dosya zaten bulunmuyorsa bir mesaj gösterebilirsiniz.
                await DisplayAlert("HATA!", "Silinecek bir bağlantı dosyası bulunamadı.", "TAMAM");
            }

        }
    }
}