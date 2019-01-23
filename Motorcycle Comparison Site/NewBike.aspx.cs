using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewBike : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            //LabelError.Text = e.Exception.ToString();
            LabelInsertError.Text = "Error: Division not inserted. Probable causes: database maintenance is occuring. If this error persists, contact the dba.";
            e.ExceptionHandled = true;
        }
        else
        {
            LabelInsertSuccess.Text = "Bike Successfully Added to Database!";
            PanelAddBike.Visible = false;
            Button1.Visible = true;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("BikeListPage.aspx");
    }
}