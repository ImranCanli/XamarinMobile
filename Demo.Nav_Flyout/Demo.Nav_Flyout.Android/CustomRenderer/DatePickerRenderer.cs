using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Java.Interop;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;

[assembly: ExportRenderer(typeof(Xamarin.Forms.DatePicker), typeof(DatePickerRenderer))]
namespace Demo.Nav_Flyout.Droid.CustomRenderer
{
   public class DatePickerRenderer : Xamarin.Forms.Platform.Android.DatePickerRenderer
    {
        public DatePickerRenderer(Context context) : base(context) { }
     protected override void OnElementChanged(Xamarin.Forms.Platform.Android.ElementChangedEventArgs<Xamarin.Forms.DatePicker> e)
        {
            base.OnElementChanged(e);
            if (Control != null && e.NewElement != null)
            {
                Control.Text = "Tarih Seçiniz";
            }
        }   
     
    }

}