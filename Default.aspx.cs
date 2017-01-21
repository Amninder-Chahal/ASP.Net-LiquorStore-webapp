using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Text;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    public string signupName, signupEmail, signupPassword1, signupPassword2, signupDOB;
    public int Year_Of_Birth = 1997;
    public static bool signupClick ;
    Connect_MYSQL newConnection = new Connect_MYSQL();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] != null)
        {
            activeLogin_Label.Text = "You are already logged in";
            login_Table.Style.Add("display", "none");
            signup_Table.Style.Add("display", "none");
            activeLogin_Table.Style.Add("display", "block");
        }
        else
        {
            activeLogin_Label.Text = "";
            signup_Table.Style.Add("display", "flex");
            login_Table.Style.Add("display", "flex");               
            activeLogin_Table.Style.Add("display", "none");
        }
    }

    protected void login_Button_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        string newLoginEmail = login_Email.Text;
        string newLoginPassword = login_Password.Text;
        signup_Label.Text = "";
        login_Check(newLoginEmail, newLoginPassword);
    }
        
    protected void signup_Button_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "dropdown();", true);
        signupName = signup_Name.Text;
        signupEmail = signup_Email.Text;
        signupPassword1 = signup_Password1.Text;
        signupPassword2 = signup_Password2.Text;
        signupDOB = signup_DOB.Text;
        signupClick = true;
        login_Label.Text = "";
        string Year = new string(signupDOB.Take(4).ToArray());
        Int32.TryParse(Year,out Year_Of_Birth);
        validate();
    }
    protected void logout_Button_Click(object sender, EventArgs e)
    {
        Session["Name"] = null;
        activeLogin_Label.Text = "";
        Response.Redirect("Default.aspx");
    }
    protected void login_Check(string loginEmail,string loginPassword)
    {
        List<string> List_Email, List_Password, List_UserName = new List<string>();
        int occurenceId;
        int j = newConnection.Count("User_Database", "Email");
        List_Email = newConnection.Select_Query("User_Database", "Email");
        List_UserName = newConnection.Select_Query("User_Database", "User_Name");
        List_Password = newConnection.Select_Query("User_Database", "Password");


        if (List_Email.Contains(loginEmail))
        {
            occurenceId = List_Email.IndexOf(loginEmail);
            string loginPasswordCheck = List_Password[occurenceId].ToString();

            if (loginPassword != loginPasswordCheck)
            {
                login_Label.Text = "Wrong Password";
            }
            else if (loginPassword == loginPasswordCheck)
            {
                sessionStart("Name", List_UserName[occurenceId]);
                string userN = List_UserName[occurenceId];
                check_My_Items(userN);
            }
        }
        else
        {
            login_Label.Text = "Invalid Credentials";
        }
    }
    protected void check_My_Items(string userName)
    {
        List<string> My_Items_List = new List<string>();
        My_Items_List = newConnection.Select_Query(userName, "Item");
        My_Items_List.RemoveAll(item => item == "" || item == null);

        if (My_Items_List.Count == 0)
        {
            Response.Redirect("Products.aspx");
        }
        else
        {
            Response.Redirect("My_Items.aspx");
        }
    }

    protected void signup()
    {
            newConnection.signupInsert(signupName, signupEmail, signupPassword2, signupDOB);
            newConnection.createTable(signupName);
            sessionStart("Name", signupName);
            Response.Redirect("Products.aspx");
    }
    protected void validate()
    {
        List<string> List_Email = new List<string>();
        List_Email = newConnection.Select_Query("User_Database", "Email");
        
        if (signupName == "" || signupName == null)
            signup_Label.Text = "Enter Name";
        
        else if (signupName.Length<6)
            signup_Label.Text = "Name Too Short";

        else if (signupName.Contains(" "))
            signup_Label.Text = "No spaces allowed in Name";

        else if (signupEmail == "" || signupEmail == null)
            signup_Label.Text = "Enter Email";

        else if (List_Email.Contains(signupEmail))
            signup_Label.Text = "Email already used";

        else if (signupPassword1 == "" || signupPassword1 == null)
            signup_Label.Text = "Enter Password";

        else if(signupPassword1.Length<6)
            signup_Label.Text = "Password Too Short";

        else if (signupPassword2 == "" || signupPassword2 == null)
            signup_Label.Text = "Re-enter Password";

        else if (signupPassword1 != signupPassword2)
            signup_Label.Text = "Passwords do not match";

        else if (signupDOB == "" || signupDOB == null)
            signup_Label.Text = "Enter Date Of Birth";

        else if (Year_Of_Birth>1997)
            signup_Label.Text = "Adults Only!";

        else
            signup();

    }

    protected void sessionStart(string session_Var, string session_Value)
    {
        Session[session_Var] = session_Value;
    }

}