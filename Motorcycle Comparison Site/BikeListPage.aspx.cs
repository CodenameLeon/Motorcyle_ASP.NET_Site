using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BikeListPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewBike.aspx");
    }

    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        Button1.Visible = true;

        if(TextBoxBikeSearch.Text == String.Empty)
        {
            PanelAllBikes.Visible = true;
        }
        else
        {
            PanelAllBikes.Visible = false;
            PanelSearchBike.Visible = true;
        }
    }

    protected void ButtonShowAll_Click(object sender, EventArgs e)
    {
        PanelAllBikes.Visible = true;
        PanelSearchBike.Visible = false;
    }
}