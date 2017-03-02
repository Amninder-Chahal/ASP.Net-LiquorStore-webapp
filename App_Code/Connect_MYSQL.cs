using System;
using System.Collections.Generic;
using System.Diagnostics;
using MySql.Data.MySqlClient;
using System.IO;
using System.Text;

public class Connect_MYSQL
{
    private MySqlConnection connection;
    private MySqlConnectionStringBuilder conn = new MySqlConnectionStringBuilder();
    StreamWriter sw;

    public Connect_MYSQL()
    {
        conn.Server = "liquorstore.cc9buwpaaqfu.us-west-2.rds.amazonaws.com";
        conn.Port = 3306;
        conn.UserID = "chahal";
        conn.Password = "Cc7653207";
        conn.Database = "liquorstoredb";
        connection = new MySqlConnection(conn.ToString());
    }
    private bool OpenConnection()
    {
        try
        {
            connection.Open();
            return true;
        }
        catch (MySqlException ex)
        {

            switch (ex.Number)
            {
                case 0:
                    sw = new StreamWriter(AppDomain.CurrentDomain.BaseDirectory+"\\App_Code\\log.txt", true);
                    sw.WriteLine("Cannot connect to server.  Contact administrator");
                    sw.Flush();
                    sw.Close();
                    Debug.WriteLine("Cannot connect to server.  Contact administrator");
                    break;

                case 1045:
                    sw = new StreamWriter(AppDomain.CurrentDomain.BaseDirectory+"\\App_Code\\log.txt", true);
                    sw.WriteLine("Invalid username/password, please try again");
                    sw.Flush();
                    sw.Close();
                    Debug.WriteLine("Invalid username/password, please try again");
                    break;
            }
            return false;
        }
    }
    private bool CloseConnection()
    {
        try
        {
            connection.Close();
            return true;
        }
        catch (MySqlException ex)
        {
            sw = new StreamWriter(AppDomain.CurrentDomain.BaseDirectory+"\\App_Code\\log.txt", true);
            sw.WriteLine(ex.Message);
            sw.Flush();
            sw.Close();
            Debug.Write(ex);
            return false;
        }
    }
    public void signupInsert(string insertUserName, string insertEmail, string insertPassword, string insertDOB)
    {
        string query = "INSERT INTO User_Database (User_Name, Email, Password, Date_Of_Birth) VALUES('" + insertUserName + "', '" + insertEmail + "', '" + insertPassword + "', '" + insertDOB + "')";

        if (this.OpenConnection() == true)
        {
            
            MySqlCommand cmd = new MySqlCommand(query, connection);
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception signup)
            {
                sw = new StreamWriter(AppDomain.CurrentDomain.BaseDirectory+"\\App_Code\\log.txt", true);
                sw.WriteLine(signup.Message);
                sw.Flush();
                sw.Close();
                Debug.Write(signup);
            }
            this.CloseConnection(); 
        }

    }

    public List<string> Select_Query(string tableName, string columnName)
    {

        string queryUserName = "SELECT " + columnName + " FROM "+tableName;
        
        List<string> output_List = new List<string>();

        if (this.OpenConnection() == true)
        {
            
            MySqlCommand cmd = new MySqlCommand(queryUserName, connection);
            try
            {
                MySqlDataReader dataReader = cmd.ExecuteReader();

                while (dataReader.Read())
                {

                    output_List.Add(dataReader[columnName] + "");
                }

                dataReader.Close();
            }
            catch (Exception readError)
            {
                sw = new StreamWriter(AppDomain.CurrentDomain.BaseDirectory+"\\App_Code\\log.txt", true);
                sw.WriteLine(readError.Message);
                sw.Flush();
                sw.Close();
                Debug.Write(readError);
            }
            

            
            this.CloseConnection();

           
            return output_List;
        }
        else
        {
            return output_List;
        }
    }
    public void createTable(string tableName)
    {
        string query = "CREATE TABLE `"+ conn.Database.ToString() + "`.`" + tableName+ "` ( `ID` INT(4) NOT NULL AUTO_INCREMENT , `Item` INT(4) NULL DEFAULT NULL, `Cart` INT(4) NULL DEFAULT NULL , PRIMARY KEY (`ID`)) ENGINE = InnoDB;";

        if (this.OpenConnection() == true)
        {

            MySqlCommand cmd = new MySqlCommand(query, connection);

            try
            {
                cmd.ExecuteNonQuery();
            }


            catch (Exception e)
            {
                sw = new StreamWriter(AppDomain.CurrentDomain.BaseDirectory+"\\App_Code\\log.txt", true);
                sw.WriteLine(e.Message);
                sw.Flush();
                sw.Close(); 
                Debug.Write(e);
            }

            this.CloseConnection();
        }
    }

    public int Count(string tableName,string count_Column)
    {
        string query = "SELECT Count(" + count_Column + ") FROM "+tableName;
        int Count = 0;

        
        if (this.OpenConnection() == true)
        {
            
            MySqlCommand cmd = new MySqlCommand(query, connection);
            
            Count = int.Parse(cmd.ExecuteScalar() + "");
                        
            this.CloseConnection();

            return Count;
        }
        else
        {
            return Count;
        }
    }
    public void Item_Insert(string tableName,string columnName,string Item)
    {
        string query = "INSERT INTO "+tableName+" ("+columnName+") VALUES('" + Item + "')";

        if (this.OpenConnection() == true)
        {
            MySqlCommand cmd = new MySqlCommand(query, connection);
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception item)
            {
                sw = new StreamWriter(AppDomain.CurrentDomain.BaseDirectory+"\\App_Code\\log.txt", true);
                sw.WriteLine(item.Message);
                sw.Flush();
                sw.Close();
                Debug.Write(item);
            }
            this.CloseConnection();
        }

    }
    public void Item_Remove (string tableName, string columnName, string value)
    {
        string query = "DELETE FROM `"+tableName+"` WHERE `"+tableName+"`.`"+columnName+"` = "+value;
        
        if (this.OpenConnection() == true)
        {
            MySqlCommand cmd = new MySqlCommand(query, connection);
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception r)
            {
                sw = new StreamWriter(AppDomain.CurrentDomain.BaseDirectory+"\\App_Code\\log.txt", true);
                sw.WriteLine(r.Message);
                sw.Flush();
                sw.Close();
                Debug.Write(r);
            }
            this.CloseConnection();
        }
    }
}