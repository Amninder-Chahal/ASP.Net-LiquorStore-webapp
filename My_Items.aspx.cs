using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class My_Items : System.Web.UI.Page
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
        List<string> My_Items_List = new List<string>();
        My_Items_List = newConnection.Select_Query(sessionName, "Item");
        My_Items_List.RemoveAll(item => item == ""|| item == null);

        if (My_Items_List.Count == 0)
        {
            login_Status_Black.Visible = true;
            login_Status_Black_Text.Text = "No items here. Go to products page to add some favorites.";
            products_Div.Visible = false;
        }
        else if (My_Items_List.Count > 0)
        {
            login_Status_Black_Text.Text = "";
            products_Div.Visible = true;
            show_Items(My_Items_List);
        }
        
    }
    protected void show_Items(List<string> temp)
    {
        hide_Items();
        if (temp.Contains("1"))
              Item_1.Visible = true;
        if (temp.Contains("2"))
            Item_2.Visible = true;
        if (temp.Contains("3"))
            Item_3.Visible = true;
        if (temp.Contains("4"))
            Item_4.Visible = true;
        if (temp.Contains("5"))
            Item_5.Visible = true;
        if (temp.Contains("6"))
            Item_6.Visible = true;
        if (temp.Contains("7"))
            Item_7.Visible = true;
        if (temp.Contains("8"))
            Item_8.Visible = true;
        if (temp.Contains("9"))
            Item_9.Visible = true;
        if (temp.Contains("10"))
            Item_10.Visible = true;
    }
    protected void hide_Items()
    {
        Item_1.Visible = false;
        Item_2.Visible = false;
        Item_3.Visible = false;
        Item_4.Visible = false;
        Item_5.Visible = false;
        Item_6.Visible = false;
        Item_7.Visible = false;
        Item_8.Visible = false;
        Item_9.Visible = false;
        Item_10.Visible = false;
    }
    protected void check_Fav_Items(int id)
    {
        List<string> Fav_Items_List = new List<string>();
        Fav_Items_List = newConnection.Select_Query(sessionName, "Item");
        Fav_Items_List.RemoveAll(item => item == "" || item == null);

        if (Fav_Items_List.Count == 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", " $('.Fav-Products-Table').fadeOut(1000); dropdown();", true);
            login_Status_Black_Text.Text = "No items here. Go to products page to add some favorites.";
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", " $('#Item_" + id + "').fadeOut(1000); dropdown();", true);
            login_Status_Black_Text.Text = "";
            return;
        }
    }
    //---------------Remove from Favorites Buttons----------------//
    protected void Remove_Button_1_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Item", itemID);
        clearLables();
        Item_1_Exists.Text = "Removed";
        check_Fav_Items(1);
    }
    protected void Remove_Button_2_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Item", itemID);
        clearLables();
        Item_2_Exists.Text = "Removed";
        check_Fav_Items(2);
    }
    protected void Remove_Button_3_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Item", itemID);
        clearLables();
        Item_3_Exists.Text = "Removed";
        check_Fav_Items(3);
    }
    protected void Remove_Button_4_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Item", itemID);
        clearLables();
        Item_4_Exists.Text = "Removed";
        check_Fav_Items(4);
    }
    protected void Remove_Button_5_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Item", itemID);
        clearLables();
        Item_5_Exists.Text = "Removed";
        check_Fav_Items(5);
    }
    protected void Remove_Button_6_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Item", itemID);
        clearLables();
        Item_6_Exists.Text = "Removed";
        check_Fav_Items(6);
    }
    protected void Remove_Button_7_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Item", itemID);
        clearLables();
        Item_7_Exists.Text = "Removed";
        check_Fav_Items(7);
    }
    protected void Remove_Button_8_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Item", itemID);
        clearLables();
        Item_8_Exists.Text = "Removed";
        check_Fav_Items(8);
    }
    protected void Remove_Button_9_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Item", itemID);
        clearLables();
        Item_9_Exists.Text = "Removed";
        check_Fav_Items(9);
    }
    protected void Remove_Button_10_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        newConnection.Item_Remove(sessionName, "Item", itemID);
        clearLables();
        Item_10_Exists.Text = "Removed";
        check_Fav_Items(10);
    }
    //--------------Add to Cart Buttons----------------//
    protected void Cart_Button_1_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Cart");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_1_Exists.Text = "Already in Cart";
        }
        else
        {
            newConnection.Item_Insert(sessionName, "Cart", itemID);
            clearLables();
            Item_1_Added.Text = "Added to Cart";
        }
    }
    protected void Cart_Button_2_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Cart");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_2_Exists.Text = "Already in Cart";
        }
        else
        {
            newConnection.Item_Insert(sessionName, "Cart", itemID);
            clearLables();
            Item_2_Added.Text = "Added to Cart";
        }
    }
    protected void Cart_Button_3_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Cart");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_3_Exists.Text = "Already in Cart";
        }
        else
        {
            newConnection.Item_Insert(sessionName, "Cart", itemID);
            clearLables();
            Item_3_Added.Text = "Added to Cart";
        }
    }
    protected void Cart_Button_4_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Cart");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_4_Exists.Text = "Already in Cart";
        }
        else
        {
            newConnection.Item_Insert(sessionName, "Cart", itemID);
            clearLables();
            Item_4_Added.Text = "Added to Cart";
        }
    }
    protected void Cart_Button_5_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Cart");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_5_Exists.Text = "Already in Cart";
        }
        else
        {
            newConnection.Item_Insert(sessionName, "Cart", itemID);
            clearLables();
            Item_5_Added.Text = "Added to Cart";
        }
    }
    protected void Cart_Button_6_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Cart");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_6_Exists.Text = "Already in Cart";
        }
        else
        {
            newConnection.Item_Insert(sessionName, "Cart", itemID);
            clearLables();
            Item_6_Added.Text = "Added to Cart";
        }
    }
    protected void Cart_Button_7_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Cart");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_7_Exists.Text = "Already in Cart";
        }
        else

        {
            newConnection.Item_Insert(sessionName, "Cart", itemID);
            clearLables();
            Item_7_Added.Text = "Added to Cart";
        }
    }
    protected void Cart_Button_8_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Cart");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_8_Exists.Text = "Already in Cart";
        }
        else
        {
            newConnection.Item_Insert(sessionName, "Cart", itemID);
            clearLables();
            Item_8_Added.Text = "Added to Cart";
        }
    }
    protected void Cart_Button_9_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Cart");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_9_Exists.Text = "Already in Cart";
        }
        else
        {
            newConnection.Item_Insert(sessionName, "Cart", itemID);
            clearLables();
            Item_9_Added.Text = "Added to Cart";
        }
    }
    protected void Cart_Button_10_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Cart");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_10_Exists.Text = "Already in Cart";
        }
        else
        {
            newConnection.Item_Insert(sessionName, "Cart", itemID);
            clearLables();
            Item_10_Added.Text = "Added to Cart";
        }
    }
    protected void clearLables()
    {
        Item_1_Added.Text = "";
        Item_1_Exists.Text = "";

        Item_2_Added.Text = "";
        Item_2_Exists.Text = "";

        Item_3_Added.Text = "";
        Item_3_Exists.Text = "";

        Item_4_Added.Text = "";
        Item_4_Exists.Text = "";

        Item_5_Added.Text = "";
        Item_5_Exists.Text = "";

        Item_6_Added.Text = "";
        Item_6_Exists.Text = "";

        Item_7_Added.Text = "";
        Item_7_Exists.Text = "";

        Item_8_Added.Text = "";
        Item_8_Exists.Text = "";

        Item_9_Added.Text = "";
        Item_9_Exists.Text = "";

        Item_10_Added.Text = "";
        Item_10_Exists.Text = "";
    }
}