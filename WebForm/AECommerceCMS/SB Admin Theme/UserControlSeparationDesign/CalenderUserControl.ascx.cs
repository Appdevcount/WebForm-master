using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.AECommerceCMS.SB_Admin_Theme
{
    //[ValidationProperty("SelectedDate")]//To enable validating user controls in ASP.NET Validation controls by exposing user control property which expose selected value
    public partial class CalenderUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;

                CalenderVisibilityChangedEventArgs eventdata = new CalenderVisibilityChangedEventArgs(false);
                OnCalenderVsibilityChanged( eventdata);
            }
            else
            {
                Calendar1.Visible = true;
                CalenderVisibilityChangedEventArgs eventdata = new CalenderVisibilityChangedEventArgs(true);
                OnCalenderVsibilityChanged(eventdata);
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;

            CalenderVisibilityChangedEventArgs cvedata = new CalenderVisibilityChangedEventArgs(false);
            OnCalenderVsibilityChanged(cvedata);
            DateSelectedEventArgs dsedata = new DateSelectedEventArgs(Calendar1.SelectedDate);
            OnDateSelection(dsedata);

        }
        public string SelectedDate {
            get { return TextBox1.Text; }
            set { TextBox1.Text = value; }
        }
        //Actual Event
        public event CalenderVisibilityChangedEventHandler CalenderVisibilityChangedEvent;
        //Method which raise the event
        protected virtual void OnCalenderVsibilityChanged(CalenderVisibilityChangedEventArgs e )
        {
            if(CalenderVisibilityChangedEvent!=null)
            {
                CalenderVisibilityChangedEvent(this, e);
            }
        }
        //Actual Event
        public event DateselectedEventHandler DateselectedEvent;
        //Method which raise the event
        protected virtual void OnDateSelection(DateSelectedEventArgs e)
        {
            if (DateselectedEvent != null)
            {
                DateselectedEvent(this, e);
            }
        }
    }

    //Eventdata class
    public class CalenderVisibilityChangedEventArgs :EventArgs
    {
        protected bool IsCalenderVisible;
        public CalenderVisibilityChangedEventArgs( bool _IsCalenderVisible)
        {
            this.IsCalenderVisible = _IsCalenderVisible;
        }

        public bool RevealIsCalenderVisible { get { return this.IsCalenderVisible; } }
    }
    //delegate - Function pointer to event
    public delegate void CalenderVisibilityChangedEventHandler(object sender,CalenderVisibilityChangedEventArgs e);

    //Eventdata class
    public class DateSelectedEventArgs : EventArgs
    {
        protected DateTime Dateselected;
        public DateSelectedEventArgs(DateTime _Dateselected)
        {
            this.Dateselected = _Dateselected;
        }

        public DateTime RevealDateselected { get { return this.Dateselected; } }
    }
    //delegate - Function pointer to event
    public delegate void DateselectedEventHandler(object sender, DateSelectedEventArgs e);
}