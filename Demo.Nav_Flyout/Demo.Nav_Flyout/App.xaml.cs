using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Text;
using System.Text.Encodings;

namespace Demo.Nav_Flyout
{
    public partial class App : Application
    {
        public App()
        {
            Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense("Mjc4MTIwOEAzMjMzMmUzMDJlMzBiRnB4dmNGRzRHTnN2cHZhL2F4ZzBtcnU2ck0wdmVEamlKcFVPWjRhVXdJPQ==");
            InitializeComponent();

            //MainPage = new MainPage();
            MainPage = new NavigationPage(new LoginPage());
        }

        protected override void OnStart()
        {
            base.OnStart();
            Encoding.RegisterProvider(CodePagesEncodingProvider.Instance);
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
