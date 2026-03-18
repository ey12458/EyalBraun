using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        { 
        
        string email= Request.Form["email"];
            string password =Request.Form["password"];

            //התחברות מנהל
            if (email == "eybral@gmail.com" && password == "12345678")
            {
                Response.Redirect("adminpage.aspx");
            }
            else { 
            string sql= "select * from users where email='" + email + "' and password='" + password + "'";
                bool userExist = MyAdoHelper.IsExist(sql);

                if (!userExist) { 
                st= "אימייל או סיסמא לא נכונים";
                }
                else
                {
                    //התחברות משתמש רגיל
                    Response.Redirect("homepage.aspx");
                }

            }




        }

    }
}