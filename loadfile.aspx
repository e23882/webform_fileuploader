<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loadfile.aspx.cs" Inherits="loadfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale= 1.0, user-scalable=no"/>



    <title>choice file</title>
    <style>
    /* http://meyerweb.com/eric/tools/css/reset/ 
   v2.0 | 20110126
   License: none (public domain)
*/

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
a {
    text-decoration:none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
    text-align:left;
    font-family:微軟正黑體;
    margin-left:10%;
    border:1px solid black;
	width:80%;
}
th
{  
    border-bottom:1px solid black;
    font-size:12px;
    padding:3%;

	white-space: nowrap;

    
}
td
{
    border-bottom:1px solid black;
    
    padding:5px;
    font-size:15px;
	white-space: nowrap;
    
}

.monkeyb-cust-file{
  overflow: hidden;
  position: relative;
  display: inline-block;
  background-color:#7B7B7B;
  color:#fff;
  text-align:center;  
  -web-border-radius:10px;
  -moz-border-radius:10px;
  border-radius:10px;
  padding:10px 30px;
  font-size:20px;
  font-family:Arial,Microsoft JhengHei;
  
}
.monkeyb-cust-file input{
  position: absolute;
  opacity: 0;
  filter: alpha(opacity=0);
  top: 0;
  right: 0;
  width:100%;
  height:100%;
}
.link {
    padding-right:3%;
}

</style>
</head>

<body style="background-color:white">
    <div id="header" style="position:relative; top:0; background-color:#5f5f5f; width:100%; height:40px; font-family:微軟正黑體;color:#fff; font-size:20px; text-align:center;line-height:40px;box-shadow:0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12)!important;" >檔案管理</div>
        <div >
            <form id="form1" runat="server">    
                <div id="content" style="" >
                    <div style="text-align:center; margin-top:3%;">
                        <div style="font-family:微軟正黑體; font-size:30px;padding-bottom:3%;">檔案上傳</div>
                        <div style="padding-bottom:3%;">
                            <table style="border:0;">
                                <tr>
                                    <td style="border:0; height:10px;">
                                        <div class="monkeyb-cust-file">
                                            <span style="white-space: nowrap;">選擇檔案</span>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </div>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td style="border:0;">
                                        <div class="monkeyb-cust-file">
                                            <span>上傳</span>
                                            <asp:Button ID="Button1" runat="server" Text="上傳" OnClick="Button1_Click" />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="padding-top:3%; border:0;" >
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                    </td>
				     
                                </tr>
                            </table>
                            
                            
                            
                        </div>
                            
                        
                    </div>
                    <hr/>
                    <div style="font-family:微軟正黑體; font-size:30px; text-align:center;margin-top:3%; padding-bottom:3%;">檔案列表
                    </div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" ForeColor="#333333" GridLines="Horizontal" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="items" HeaderText="項次　" >
                            <HeaderStyle  />
                            </asp:BoundField>
                            <asp:HyperLinkField DataTextField="filename" HeaderText="檔案名稱" >
                            <HeaderStyle  />
                            </asp:HyperLinkField>
                            <asp:BoundField DataField="filesize" HeaderText="檔案大小" />
                        </Columns>
                        <FooterStyle  />
                        <HeaderStyle BorderStyle="None" Font-Bold="True" Font-Size="20pt" Font-Strikeout="False" Height="30px" Width="100pt" />
                        <PagerStyle Font-Bold="False" Font-Size="18pt" />
                        <RowStyle Font-Size="18pt" />
                    </asp:GridView>
                </div>
            </form>
        </div>
</body>
</html>
