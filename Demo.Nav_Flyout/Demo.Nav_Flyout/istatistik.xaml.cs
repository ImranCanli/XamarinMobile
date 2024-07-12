using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Demo.Nav_Flyout
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class istatistik : ContentPage
	{
		public ObservableCollection<Ozet> stats;
		public istatistik ()
		{
			InitializeComponent ();

			stats = new ObservableCollection<Ozet> ();
			LoadDataFromDatabase();
			MyStats.ItemsSource = stats;

        }

        private void LoadDataFromDatabase()
		{

			try { 
			SqlConnection connstats = new SqlConnection (Application.Current.Properties["ConnectionString"].ToString());
			connstats.Open ();
			SqlCommand cmdstats = new SqlCommand("SELECT * FROM view_guncelozet");
			cmdstats.Connection = connstats;
			using(SqlDataReader reader = cmdstats.ExecuteReader())
			{
				while (reader.Read())
				{
						int makverimval = Convert.ToInt32(reader["makverim"]);
						int perverimval = Convert.ToInt32(reader["perverim"]);
						int fverimval = Convert.ToInt32(reader["fverim"]);

						Color trenk1;
						Color trenk2;
						Color trenk3;

						if (makverimval > 85)
						{
							trenk1 = Color.Green;
						}
						else if (makverimval > 70)
						{
							trenk1 = Color.Orange;
						}
						else
						{
							trenk1 = Color.Red;
						}

						if(perverimval > 85)
						{
							trenk2 = Color.Green;
						}
						else if(perverimval > 70)
						{
							trenk2 = Color.Orange;
						}
                        else
                        {
                            trenk2 = Color.Red;
                        }

						if(fverimval > 85)
						{
							trenk3 = Color.Green;
						}
						else if(fverimval > 70)
						{
							trenk3 = Color.Orange;
						}
						else
						{
							trenk3 = Color.Red;
						}

						Ozet item = new Ozet
						{
							vardiyatur = reader["vardiyatur"].ToString(),
							acmaksay = Convert.ToInt32(reader["acmaksay"]),
							kapmaksay = Convert.ToInt32(reader["kapmaksay"]),
							durmaksay = Convert.ToInt32(reader["durmaksay"]),
							makverim = Convert.ToInt32(reader["makverim"]),
							fverim = Convert.ToInt32(reader["fverim"]),
							perverim = Convert.ToInt32(reader["perverim"]),
							maxhata = Convert.ToInt32(reader["maxhata"]),
							topmaksay = Convert.ToInt32(reader["topmaksay"]),
							planlidurus = Convert.ToInt32(reader["planlidurus"]),
							isletmeno = Convert.ToInt32(reader["isletmeno"]),
							renk1 = trenk1,
							renk2 = trenk2,
							renk3 = trenk3,
                    };
					stats.Add (item);
				}
			}
            } catch(Exception ex)
			{
				DisplayAlert("HATA !", "Uygulamada hata oluştu.\nDetaylar :"+ex.Message, "TAMAM");
			} 

        }
	}
}