using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signup : System.Web.UI.Page
{
    public string stResult = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string username = Request.Form["username"];
            string email = Request.Form["email"];
            string password = Request.Form["password"];
            string Lname = Request.Form["Lname"];
            string Fname = Request.Form["Fname"];
            string dev = Request.Form["dev"];
            string sqlCheck =
                "SELECT * FROM tUsers WHERE email = N'" + email + "'";
            bool exists = MyAdoHelper.IsExist(sqlCheck);

            if (exists)
            {
                stResult = " email already exists please enter a new one";
            }





            else
            {

                string sqlInsert = "INSERT INTO tUsers VALUES (N'" + Fname + "', N'" + Lname + "', N'" + username + "', N'" + email + "',  N'" + dev + "',N'" + password + "')";
                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);
               
                Response.Redirect("login.aspx");

            }
        }
    }
}