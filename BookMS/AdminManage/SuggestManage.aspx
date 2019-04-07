<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuggestManage.aspx.cs" Inherits="BookMS.AdminManage.SuggestManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../style/AdminStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="SMmain">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 748px">
                <tr>
                    <td style="text-align: right;">
                        <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="100px">
                            <asp:ListItem>讀者名</asp:ListItem>
                            <asp:ListItem>建議內容</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="Button1" runat="server" Text="確認查詢" Width="91px" OnClick="Button1_Click" />&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left;">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="流水號" OnPageIndexChanging="PageChang" OnRowDeleting="rowdelete" Width="748px">
                            <Columns>
                                <asp:BoundField DataField="讀者名" HeaderText="讀者名">
                                    <HeaderStyle Width="100px" />
                                    <ItemStyle Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="建議內容" HeaderText="建議內容">
                                    <HeaderStyle Width="460px" />
                                    <ItemStyle Width="460px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="建議時間" HeaderText="填寫時間">
                                    <HeaderStyle Width="140px" />
                                    <ItemStyle Width="140px" />
                                </asp:BoundField>
                                <asp:CommandField ShowDeleteButton="True">
                                    <HeaderStyle Width="40px" />
                                    <ItemStyle Width="40px" />
                                </asp:CommandField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>