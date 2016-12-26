<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>login page</title>
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
table {
	border-collapse: collapse;
	border-spacing: 0;
}
</style>
</head>
    
<body style="background-color:#fff">
    <div id="header" style="position:relative; top:0; background-color:#5f5f5f; width:100%; height:40px; font-family:微軟正黑體;color:#fff; font-size:20px; text-align:center;line-height:40px;box-shadow:0 2px 4px 0 rgba(0,0,0,0.16),0 2px 10px 0 rgba(0,0,0,0.12)!important;" >檔案管理</div>
    <form id="form1" runat="server">    
    <div id="content" style="text-align:center; height:100%;line-height:100%;">

                <table style="margin-left:auto; margin-right:auto;margin-top:18%;">
                    <tr>
                        <td style="text-align:left; width:200px; height:80px; font-family:Arial,sans-serif; font-size:30px; ">
                            <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Font-Size="18pt" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:left; width:200px; height:80px; font-family:Arial,sans-serif; font-size:30px; ">
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Font-Size="18pt" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="登入" Height="40px" Width="80px" Font-Size="16pt" Font-Bold="True" OnClick="Button1_Click" /></td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="取消" Height="40px" Width="80px" Font-Size="16pt" Font-Bold="True" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"  style="font-size:18px;color:red;font-family:Arial,sans-serif;text-align:right;height:80px;line-height:80px;">
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    <div id="footer" style="position:absolute; bottom:0; background-color:#5f5f5f; width:100%; height:40px; color:white;font-family:Arial,sans-serif;line-height:40px; " >
        <div style="padding-left:30px;">
            ver1.0
        </div>
    </div>

</body>
</html>
