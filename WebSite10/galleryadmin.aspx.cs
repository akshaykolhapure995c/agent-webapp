using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class galleryadmin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=interiordb;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string strname = FileUpload1.FileName.ToString();
            string img= TextBox1.Text+".jpg";
            string code1 = TextBox1.Text;  
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/")+img);
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/large/")+ img);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into gallerytbl values('" + img + "','" + TextBox2.Text + "','" + code1 + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Image Uploaded Successfully.";
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Please Upload The File.";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
}