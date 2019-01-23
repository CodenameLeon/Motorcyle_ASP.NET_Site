using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

public partial class SubscribePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //FindControl("ButtonSubscribe").
    }
    private bool isEmail(string inputEmail)
    {
        //Regex to validate Email
        Regex re = new Regex(@"^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$", RegexOptions.IgnoreCase);
        return re.IsMatch(inputEmail);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Send Email from Textbox to Regex Method
        string userEmail = TextBoxEmail.Text;
        //Check if the return is valid (T or F)
        bool valid = isEmail(userEmail);

        if (RequiredFieldValidator1.IsValid == true & valid == true)
        {
            try
            {
                //Add Email to DB
                SqlDataSource obj = new SqlDataSource();

                //Connect to out database
                obj.ProviderName = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringMotorcycleComparisonDB"].ProviderName;
                obj.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringMotorcycleComparisonDB"].ConnectionString;

                //Insert Command - INSERT INTO TableName (ColumnName) values(value)
                obj.InsertCommand = "INSERT INTO Subscribers (Email) values(?)";

                //Insert Paramter
                obj.InsertParameters.Add("Email", TextBoxEmail.Text);

                //Insert Object (email)
                obj.Insert();

                //Hide
                Button1.Visible = false;
                Label1.Visible = false;
                TextBoxEmail.Visible = false;
                //Show
                LabelSubscribed.Visible = true;

            }
            catch (Exception)
            {
                LabelInsertError.Text = "Error adding Email to Subscription List. Please Try Again.";
                LabelSubscribed.Visible = false;
            }

        }
        else
        {
            RequiredFieldValidator1.IsValid = false;
        }
    }
}