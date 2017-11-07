using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Web.UI;
using Oracle.DataAccess.Client;
using System.Web;
using System.Globalization;
using Oracle.Web;
using Oracle.DataAccess;
using Oracle.DataAccess.Types;
using System.Data;
using System.Text;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
namespace ebookproject
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["login"]!=null)
            {
                Label2.Text = Request.Cookies["login"]["username"].ToString();
                
            }
            string usname = Request.Cookies["login"]["username"].ToString();
            string dbpassword;
            dbpassword = File.ReadAllText(@"C:\dbpassword.txt");
            string connStr = $"Data Source=127.0.0.1;User Id=bibliophile;Password={dbpassword}";
            OracleConnection conn = new OracleConnection(connStr);
            conn.Open();
            OracleCommand cmd = new OracleCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select DATEJOINED from Author where Username = Username";
           cmd.Parameters.Add(new OracleParameter("Username", usname));
           
            cmd.CommandType = CommandType.Text;
             OracleDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
               
                Label3.Text = dr["DATEJOINED"].ToString();
            }
            // dr.Close();

          

            conn.Close();


            if (!IsPostBack)
            {
                string[] filePaths = Directory.GetFiles(Server.MapPath("~/Images/"));
                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in filePaths)
                {
                    string fileName = Path.GetFileName(filePath);
                    files.Add(new ListItem(fileName, "~/Images/" + fileName));
                }

                GridView1.DataBind();
            }
        }


        protected void Upload(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + fileName);
                Response.Redirect(Request.Url.AbsoluteUri);
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie1 = new HttpCookie("login");
            cookie1.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(cookie1);
            Response.Redirect("login.aspx");

            //last seen part
        }
    }
}