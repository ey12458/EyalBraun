using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public string stResult = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string username = Request.Form["username"];
            string email = Request.Form["email"];
            string password = Request.Form["password"];

            string sqlCheck =
                "SELECT * FROM tUsers WHERE email = n'" + email + "'";
            bool exists = MyAdoHelper.IsExist(sqlCheck);

            if (exists)
            {
                stResult = " email already exists please enetr a new one";
            }





            else
            {




                string sqlInsert = "INSERT INTO tUsers VALUES (N'" + username + "', N'" + email + "', N'" + password + "')";
                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);
                stResult = "User " + username + " added successfully.";


            }
        }
    }
}