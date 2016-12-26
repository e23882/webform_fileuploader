using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class loadfile : System.Web.UI.Page
{
    //專案預設Upload資料夾避免錯誤
    //建上傳下載資料夾 設定變數loc ip.開資料夾權限(asp.net user) inetmgr:IIS>驗證>匿名驗證>編輯>IUSER設定 給admin帳號密碼
	//									uploads>內容共用>IISuser

    String savePath = "C:\\inetpub\\wwwroot\\Uploads\\";//上傳路徑
    String downloadPath = "Uploads";//下載路徑 //localhost下Upload資料夾
    String loc = "49.158.107.110";//這個要改成自己ip


    protected void Page_Load(object sender, EventArgs e)
    {
        try 
        {
            xDirFileList_gw(downloadPath); //localhost下
            //Response.Write("上傳資料夾位置 : " + savePath+"     ");
            
            //if (downloadPath.Equals("Uploads"))
            //{
            //    Response.Write("下載資料夾位置 : 專案下的" + downloadPath+" 資料夾");
            //}
            //else
            //{
            //    Response.Write("下載資料夾位置 : 根目錄下的 " + downloadPath+" 資料夾");
            //}
            
        }
        catch(Exception yee)
        {
            Response.Write(yee.ToString());
        }
         
    }

    public void xDirFileList_gw(string xdirectory)
    {
        int i = 1;
        DataTable flt = new DataTable(); 
        flt.Columns.Add("items", typeof(System.Int16));  
        flt.Columns.Add("filename", typeof(System.String));
        flt.Columns.Add("filesize", typeof(System.Int32));
        string rootpath = Request.PhysicalApplicationPath; 
        DirectoryInfo docspath = new DirectoryInfo(rootpath + xdirectory); 
        FileInfo[] filelist = docspath.GetFiles();  
        foreach (FileInfo fl in filelist)
        {
            flt.Rows.Add(i, "<a id='link' href='http://"+loc+"/Uploads/" +fl.Name+"'>" + fl.Name + "</a>", fl.Length);
            i++;
        }
        this.GridView1.DataSource = flt; 
        this.GridView1.DataBind();  
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex; 
        xDirFileList_gw(downloadPath);    
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile) 
        {
            String fileName = FileUpload1.FileName;  
            
            String saveResult = savePath + fileName;
            FileUpload1.SaveAs(saveResult);
 
            Label1.Text = fileName+ "<b>上傳成功</b>";
        }
        else
        {
            Label1.Text = "請先挑選檔案之後，再來上傳";
        }
    }

   
}