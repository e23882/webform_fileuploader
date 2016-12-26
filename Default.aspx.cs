using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)//login
    {
        if (TextBox1.Text == ""&&TextBox2.Text=="") //登入條件 session
        {
            Response.Redirect("loadfile.aspx");
        }
        else 
        {
            Label3.Text = "登入失敗,帳號或密碼錯誤 ";
        }
    }
}