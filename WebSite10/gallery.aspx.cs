using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class gallery : System.Web.UI.Page
{

    
    protected void Page_Load(object sender, EventArgs e)
    {                 
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=interiordb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
           cmd.CommandText = "select * from gallerytbl";
      //  cmd.CommandText = "select  top 2 * from gallerytbl where code NOT IN (select  top (" + count + ") code from gallerytbl order by code asc) order by code asc";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        d1.DataSource = dt;
        d1.DataBind();
        con.Close();
   

}

}