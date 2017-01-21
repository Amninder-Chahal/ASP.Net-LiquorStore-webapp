using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

public partial class Favorites : System.Web.UI.Page
{
    Connect_MYSQL newConnection = new Connect_MYSQL();
    protected string sessionName;

    protected void Page_Load(object sender, EventArgs e)
    {
        sessionName = Convert.ToString(Session["Name"]);
        if (Session["Name"] == null || sessionName == "")
        {
            login_Status_Black.Visible = true;
            login_Status_Label.Text = "Not Logged In!";
            login_Status_Black_Text.Text = "Please log in";
            logout_Button.Visible = false;
            products_Div.Visible = false;

        }
        else
        {
            login_Status_Label.Text = "Hello! <h3 class='StatusLabel_Name'>" + sessionName + "</h3>";
            logout_Button.Visible = true;
            products_Div.Visible = true;
            login_Status_Black_Text.Text = "";
            Display_My_Items();
        }
    }

    protected void logout_Button_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        login_Status_Label.Text = "";
        Response.Redirect("Default.aspx");
    }

    protected void Display_My_Items()
    {
        List<string> Cart_Items_List = new List<string>();
        Cart_Items_List = newConnection.Select_Query(sessionName, "Cart");
        Cart_Items_List.RemoveAll(item => item == "" || item == null);

        if (Cart_Items_List.Count == 0)
        {
            login_Status_Black.Visible = true;
            login_Status_Black_Text.Text = "No items here. Go to products page to buy products.";
            products_Div.Visible = false;
        }
        else if (Cart_Items_List.Count > 0)
        {
            login_Status_Black_Text.Text = "";
            products_Div.Visible = true;
            show_Items(Cart_Items_List);
        }

    }
    protected void show_Items(List<string> temp)
    {
        hide_Items();
        if (temp.Contains("1"))
            Cart_Item_1.Visible = true;
        if (temp.Contains("2"))
            Cart_Item_2.Visible = true;
        if (temp.Contains("3"))
            Cart_Item_3.Visible = true;
        if (temp.Contains("4"))
            Cart_Item_4.Visible = true;
        if (temp.Contains("5"))
            Cart_Item_5.Visible = true;
        if (temp.Contains("6"))
            Cart_Item_6.Visible = true;
        if (temp.Contains("7"))
            Cart_Item_7.Visible = true;
        if (temp.Contains("8"))
            Cart_Item_8.Visible = true;
        if (temp.Contains("9"))
            Cart_Item_9.Visible = true;
        if (temp.Contains("10"))
            Cart_Item_10.Visible = true;
    }
    protected void hide_Items()
    {
        Cart_Item_1.Visible = false;
        Cart_Item_2.Visible = false;
        Cart_Item_3.Visible = false;
        Cart_Item_4.Visible = false;
        Cart_Item_5.Visible = false;
        Cart_Item_6.Visible = false;
        Cart_Item_7.Visible = false;
        Cart_Item_8.Visible = false;
        Cart_Item_9.Visible = false;
        Cart_Item_10.Visible = false;
    }
    protected void check_Cart_Items(int id)
    {
        List<string> Cart_Items_List = new List<string>();
        Cart_Items_List = newConnection.Select_Query(sessionName, "Cart");
        Cart_Items_List.RemoveAll(item => item == "" || item == null);

        if (Cart_Items_List.Count == 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", " $('#Cart_Item_11, .Cart-Table-Row').fadeOut(1000); dropdown();", true);
            login_Status_Black_Text.Text = "No items here. Go to products page to buy products.";            
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", " $('#Cart_Item_"+id+ "').fadeOut(1000); dropdown();", true);
            login_Status_Black_Text.Text = "";
            return;
        }
    }
    protected void Cart_Button_1_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Cart", itemID);
        Cart_Label_1.Text = "Removed";
        
        check_Cart_Items(1);
    }
    protected void Cart_Button_2_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Cart", itemID);
        Cart_Label_2.Text = "Removed";
        
        check_Cart_Items(2);
    }
    protected void Cart_Button_3_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Cart", itemID);
        Cart_Label_3.Text = "Removed";

        check_Cart_Items(3);
    }
    protected void Cart_Button_4_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Cart", itemID);
        Cart_Label_4.Text = "Removed";

        check_Cart_Items(4);
    }
    protected void Cart_Button_5_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Cart", itemID);
        Cart_Label_5.Text = "Removed";

        check_Cart_Items(5);
    }
    protected void Cart_Button_6_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Cart", itemID);
        Cart_Label_6.Text = "Removed";

        check_Cart_Items(6);
    }
    protected void Cart_Button_7_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Cart", itemID);
        Cart_Label_7.Text = "Removed";

        check_Cart_Items(7);
    }
    protected void Cart_Button_8_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Cart", itemID);
        Cart_Label_8.Text = "Removed";

        check_Cart_Items(8);
    }
    protected void Cart_Button_9_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Cart", itemID);
        Cart_Label_9.Text = "Removed";

        check_Cart_Items(9);
    }
    protected void Cart_Button_10_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Cart", itemID);
        Cart_Label_10.Text = "Removed";

        check_Cart_Items(10);
    }
    protected void Cart_Remove_All_Click(object sender, EventArgs e)
    {
        string itemID;
        for (int i = 0; i<=10; i++)
        {
            itemID = i.ToString();
            newConnection.Item_Remove(sessionName, "Cart", itemID);
        }
        check_Cart_Items(11);
    }

    protected void Check_Out_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
    }
}