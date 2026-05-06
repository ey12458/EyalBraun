using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {

            string email = Request.Form["email"];
            string password = Request.Form["password"];

            //התחברות מנהל
            if (email == "eybral@gmail.com" && password == "eybral")
            {
                Session["username"] = "Manager";
                Session["admin"] = "true";

                Response.Redirect("adminpage.aspx");
            }

            else
            {

                string sql = "SELECT * FROM tUsers WHERE email='" + email + "' and password='" + password + "'";
                bool userExist = MyAdoHelper.IsExist(sql);

                DataTable dt = MyAdoHelper.ExecuteDataTable(sql);
                if (dt.Rows.Count == 0)
                {
                    st = " error";
                    Response.Redirect("login.aspx");

                }
                else {
                    Session["user"] = "true";
                    Session["username"] =dt.Rows[0]["username"];
                    Response.Redirect("homepage.aspx");

                }

                /* if (!userExist) { 
                st= "אימייל או סיסמא לא נכונים";
                    

                }
                else
                {
                    //התחברות משתמש רגיל
                    Session["email"] = Request.Form["email"];
                    Session["user"] = "true";
                    Response.Redirect("homepage.aspx");
                }

            }
*/



            }

        }
    }
}