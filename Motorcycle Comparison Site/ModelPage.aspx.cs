using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

public partial class ModelPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Intially on page first load - set bike to wahtever was brought in by Query String
        if (!Page.IsPostBack)
        {
            DropDownListBike1.SelectedValue = Request.QueryString["id"];
        }

        //ListItem item = DropDownListBike1.Items.FindByValue(DropDownListBike1.SelectedValue);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
        Response.Redirect("ModelPage.aspx?id="+DropDownListBike1.SelectedValue);
    }
}