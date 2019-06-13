using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;



public partial class Controls_ContactForm : System.Web.UI.UserControl
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|Datadirectory|\\Database.mdf;Integrated Security=True");
    //SqlConnection con = new SqlConnection("Data Source=DESKTOP-E153V28\\SQLEXPRESS;Initial Catalog=website;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void SendButton_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = new SqlCommand("INSERT INTO DonHang VALUES ('" + Name.Text + "','" + PhoneHome.Text + "','" + EmailAddress.Text + "','" + Loaigiay.SelectedValue.ToString() + "','" + Magiay.SelectedValue.ToString() + "','" + Soluong.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        if (Page.IsValid)
        {
            Response.Write("<script>alert('Đặt mua thành công')</script>");
        }
        else
        {
            Response.Write("<script>alert('sai')</script>");
        }
        System.Threading.Thread.Sleep(5000);
    }
}