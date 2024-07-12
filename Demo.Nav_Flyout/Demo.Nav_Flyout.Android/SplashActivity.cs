using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Demo.Nav_Flyout.Droid
{
    [Activity(Label = "Arer Saha Takip", MainLauncher =true, Theme ="@style/MyTheme.Splash", NoHistory =true)]
    public class SplashActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Create your application here
        }
        protected override async void OnResume()
        {
            base.OnResume();
            await SimulateStartp();
        }

        async Task SimulateStartp()
        {
            await Task.Delay(TimeSpan.FromSeconds(1));
            StartActivity(new Intent(Application.Context,typeof(MainActivity)));
        }
    }
}