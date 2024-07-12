using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.CommunityToolkit.UI.Views;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Demo.Nav_Flyout;
using System.Runtime.CompilerServices;

namespace Demo.Nav_Flyout
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class PagePopup : Popup
	{
		public PagePopup (Class1 item)
		{
			InitializeComponent();

            int devir = Convert.ToInt32(item.dev);
			int makineverim = Convert.ToInt32(item.makverim);
			int personelverim = Convert.ToInt32(item.perverim);
			int verim = Convert.ToInt32(item.fverim);
            int maksdevir = Convert.ToInt32(item.maxdev);

            if (devir != maksdevir)
            {
                devirlabel.TextColor = Color.Red;
            }
			
			if(verim > 85)
			{
				fverimlabel.TextColor = Color.Green;
			}
			else if(verim >70)
			{
				fverimlabel.TextColor = Color.Orange;
			}
			else 
			{ 
				fverimlabel.TextColor = Color.Red; 
			}

			if (makineverim > 85) 
			{
				makverimlabel.TextColor = Color.Green;
			}
			else if (makineverim > 70)
			{
				makverimlabel.TextColor = Color.Orange;
			}
			else
			{
				makverimlabel.TextColor = Color.Red;
			}

			if(personelverim > 85)
			{
				perverimlabel.TextColor = Color.Green;
			}
			else if(personelverim > 70)
			{
				perverimlabel.TextColor = Color.Orange;
			}
			else
			{
				perverimlabel.TextColor = Color.Red;
			}


            makkodlabel.Text = item.makkod.ToString();
			personellabel.Text = item.perisim.ToString();
			devirlabel.Text = item.dev.ToString();
			makadlabel.Text = item.makad.ToString();
			planliduruslabel.Text = item.planlidurus.ToString();
			plansizduruslabel.Text = item.plansizdurus.ToString();
			makverimlabel.Text = item.makverim.ToString();
			tursaylabel.Text = item.tursay.ToString();
			ideallabel.Text = item.ideal.ToString();
			toplamduruslabel.Text = item.toplamdurus.ToString();
			perverimlabel.Text= item.perverim.ToString();
			fverimlabel.Text=item.fverim.ToString();
			acsaatlabel.Text = item.acsaat.ToString();
			gecidurussaylabel.Text = item.gecidurussay.ToString();
			maxdevlabel.Text = item.maxdev.ToString();

		}

    }
}