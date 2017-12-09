using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class enquiry : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=interiordb;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["des"] != null)
        {
            TextBox1.Text = Request.QueryString["des"].ToString();
        }
        else
        {
          Response.Redirect("gallery.aspx"); 
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "Alert", "Data has been saved", true);

       
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into enqirytbl values('" + TextBox2.Text  + "','" + TextBox3.Text  + "','" + TextBox4.Text  + "','" + TextBox1.Text  + "')", con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Successfully Submitted.')</script>"); 
        con.Close();
        
     Response.Redirect("gallery.aspx"); 
    }
}