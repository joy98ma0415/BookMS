<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookInsert.aspx.cs" Inherits="BookMS.AdminManage.BookInsert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../style/AdminStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="BookInsertMain">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 750px; line-height: 30px; margin: 5px 0 5px 0; border: solid 1px #ddd;">
                <tr>
                    <td style="width: 300px; text-align: right;">書名：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 300px; text-align: right;">作者：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 300px; text-align: right;">圖書類別：</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 300px; text-align: right;">出版社：</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 300px; text-align: right;">出版日期：</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 300px; text-align: right;">入庫時間：</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 300px; text-align: right;">圖書數量：</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 300px; text-align: right;">所在書架：</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 300px; text-align: right;">圖書價格：</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center; height: 24px;">
                        <asp:Button ID="Button1" runat="server" Text="確認添加" Width="100px" OnClick="Button1_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>