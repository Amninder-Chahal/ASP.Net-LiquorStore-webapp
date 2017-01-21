using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_2 : System.Web.UI.Page
{
    Connect_MYSQL newConnection = new Connect_MYSQL();
    protected string sessionName;
    protected void Page_Load(object sender, EventArgs e)
    {
        sessionName = Convert.ToString(Session["Name"]);
        if (Session["Name"] == null || sessionName == "")
        {
            login_Status_Label.Text = "Not Logged In!";
            login_Status_Black.Visible = true;
            login_Status_Black_Text.Text = "Please log in";
            logout_Button.Visible = false;
            Products_Div.Visible = false;

        }
        else
        {
            login_Status_Label.Text = "Hello! <h3 class='StatusLabel_Name'>" +sessionName+"</h3>";
            logout_Button.Visible = true;
            Products_Div.Visible = true;
            login_Status_Black.Visible = false;
            login_Status_Black_Text.Text = "";
        }
    }
    protected void logout_Button_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        login_Status_Label.Text = "";
        Response.Redirect("Default.aspx");
    }
    //--------------Add to Favorites Buttons----------------//
    protected void Fav_Button_1_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string (button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Item");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_1_Exists.Text = "Already in Favorites";
        }
        else
        {
            newConnection.Item_Insert(sessionName,"Item", itemID);
            clearLables();
            Item_1_Added.Text = "Added to Favorites";
        }
    }
    protected void Fav_Button_2_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Item");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_2_Exists.Text = "Already in Favorites";
        }
        else
        {
            newConnection.Item_Insert(sessionName,"Item", itemID);
            clearLables();
            Item_2_Added.Text = "Added to Favorites";
        }
    }
    protected void Fav_Button_3_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Item");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_3_Exists.Text = "Already in Favorites";
        }
        else
        {
            newConnection.Item_Insert(sessionName,"Item", itemID);
            clearLables();
            Item_3_Added.Text = "Added to Favorites";
        }
    }
    protected void Fav_Button_4_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Item");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_4_Exists.Text = "Already in Favorites";
        }
        else
        {
            newConnection.Item_Insert(sessionName,"Item", itemID);
            clearLables();
            Item_4_Added.Text = "Added to Favorites";
        }
    }
    protected void Fav_Button_5_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Item");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_5_Exists.Text = "Already in Favorites";
        }
        else
        {
            newConnection.Item_Insert(sessionName,"Item", itemID);
            clearLables();
            Item_5_Added.Text = "Added to Favorites";
        }
    }
    protected void Fav_Button_6_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Item");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_6_Exists.Text = "Already in Favorites";
        }
        else
        {
            newConnection.Item_Insert(sessionName,"Item", itemID);
            clearLables();
            Item_6_Added.Text = "Added to Favorites";
        }
    }
    protected void Fav_Button_7_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Item");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_7_Exists.Text = "Already in Favorites";
        }
        else
        {
            newConnection.Item_Insert(sessionName,"Item", itemID);
            clearLables();
            Item_7_Added.Text = "Added to Favorites";
        }
    }
    protected void Fav_Button_8_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Item");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_8_Exists.Text = "Already in Favorites";
        }
        else
        {
            newConnection.Item_Insert(sessionName,"Item", itemID);
            clearLables();
            Item_8_Added.Text = "Added to Favorites";
        }
    }
    protected void Fav_Button_9_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Item");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_9_Exists.Text = "Already in Favorites";
        }
        else
        {
            newConnection.Item_Insert(sessionName,"Item", itemID);
            clearLables();
            Item_9_Added.Text = "Added to Favorites";
        }
    }
    protected void Fav_Button_10_Click(object sender, EventArgs e)
    {
        Button button = (Button)sender;
        string itemID = new string(button.ID.Where(Char.IsDigit).ToArray());
        List<string> Items_List = new List<string>();
        Items_List = newConnection.Select_Query(sessionName, "Item");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        if (Items_List.Contains(itemID))
        {
            clearLables();
            Item_10_Exists.Text = "Already in Favorites";
        }
        else
        {
            newConnection.Item_Insert(sessionName,"Item", itemID);
            clearLables();
            Item_10_Added.Text = "Added to Favorites";
        }
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
            newConnection.Item_Insert(sessionName,"Cart", itemID);
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
