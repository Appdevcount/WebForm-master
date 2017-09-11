using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.AImplements
{
    public partial class SubmitForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //To add the javascript using code for the Next button, in a wizard step to get confirmation
            //In addition to using Onclient Click button property for injecting javascript , can inject the same in Code behind using the Button ID -[which is not directly available so need to obtain by hierarchy]
            //OnClientClick = "return confirm('Are you sure to Cancel?')"
            //using Code behind
            Button bt = (Button)Wizard1.FindControl("StartNavigationTemplateContainerID").FindControl("StartNextButton");
            bt.OnClientClick = "return confirm('Are you sure to Cancel?')";
        }

        protected void Wizard1_CancelButtonClick(object sender, EventArgs e)
        {

        }

        protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
        {
            if(Wizard1.ActiveStepIndex==0)
            {
                Wizard1.HeaderText = "Personal Info";
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            Response.Redirect("~/ConfirmationPage.aspx");
        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if(e.CurrentStepIndex==2)
            {
                Wizard1.HeaderText = "Education Info";
            }
        }

        protected void Wizard1_PreviousButtonClick(object sender, WizardNavigationEventArgs e)
        {

        }
    }
}