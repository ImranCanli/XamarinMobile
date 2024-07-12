using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Demo.Nav_Flyout
{
    public partial class MainPage : FlyoutPage
    {
        public MainPage()
        {
            InitializeComponent();
            flyout.listView.ItemSelected += OnSelectedItem;
        }

        private async void OnSelectedItem(object sender, SelectedItemChangedEventArgs e)
        {
            var item = e.SelectedItem as FlyoutItemPage;
            int indeks;

            if (item != null) 
            {
                //Detail = new NavigationPage((Page)Activator.CreateInstance(item.TargetPage));
                flyout.listView.SelectedItem = null;
                IsPresented = false;

                string value = item.Title;
                

                if(value == "Plansız Duruşlar")
                {
                    indeks = 1;
                    //MainPage = new NavigationPage(new CoursesPage());
                  await  Navigation.PushModalAsync(new NavigationPage(new Durusatama(indeks)));
                }
                else if(value == "Planlı Duruşlar")
                {
                    indeks = 2;
                    await Navigation.PushModalAsync(new NavigationPage(new Durusatama(indeks)));
                }
                else if(value == "Personel Atama")
                {
                  await Navigation.PushModalAsync(new NavigationPage(new Personelatama()));
                }
                else if (value == "Devir Atama")
                {
                  await Navigation.PushModalAsync(new NavigationPage(new Deviratama()));
                }
                //else if (value == "GridDeneme")
                //{
                //    await Navigation.PushModalAsync(new NavigationPage(new Page1()));
                //}
                else if (value == "Arşiv")
                {
                    await Navigation.PushModalAsync(new NavigationPage(new Page2()));
                }
                else if(value == "İstatistik")
                {
                    await Navigation.PushModalAsync(new NavigationPage(new istatistik()));
                }
            }
        }
    }
}
