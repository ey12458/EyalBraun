using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string stResult = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string username = Request.Form["username"];
            string email = Request.Form["email"];
            string password = Request.Form["password"];

            string sqlInsert = "INSERT INTO tUsers VALUES (N'" + username + "', N'" + email + "', N'" + password + "')";
            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);
            stResult = "User " + username + " added successfully.";
             

        }
    }
}