using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=interiordb;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            
        }

        Label1.Text = "";
        con.Open();
    }

     protected void Button2_Click(object sender, EventArgs e)
     {
         
         SqlCommand cmd = new SqlCommand("insert into contact_details values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')",con);
         cmd.ExecuteNonQuery();
         con.Close();
         TextBox1.Text = "";
         TextBox2.Text = "";
         TextBox3.Text = "";
         TextBox4.Text = "";
         Response.Redirect("contact.aspx"); 
         Response.Write(Label1.Text = "Submitted Successfully.");
         
        
     }
}