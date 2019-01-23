using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BikeComparisonPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    

        //If an item/value is selected in either drop down list remove it from the other drop down list
        ListItem item = DropDownListBike1.Items.FindByValue(DropDownListBike1.SelectedValue);
        if (item != null)
        {
            DropDownListBike2.Items.Remove(item);
        }

        ListItem item2 = DropDownListBike2.Items.FindByValue(DropDownListBike2.SelectedValue);
        if (item2 != null)
        {
            DropDownListBike1.Items.Remove(item2);
        }


        // if(ListView1.Items[])

    }
}
