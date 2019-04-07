<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userManage.aspx.cs" Inherits="BookMS.AdminManage.userManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../style/AdminStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="UserMmain">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 748px">
                <tr>
                    <td style="text-align: right;">
                        <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="100px">
                            <asp:ListItem>帳號</asp:ListItem>
                            <asp:ListItem>密碼</asp:ListItem>
                            <asp:ListItem>性別</asp:ListItem>
                            <asp:ListItem>學號</asp:ListItem>
                            <asp:ListItem>學院</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="Button1" runat="server" Text="確認查詢" Width="90px" OnClick="Button1_Click" />&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left;">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="流水號" OnPageIndexChanging="PageChang" OnRowDeleting="rowdelete" Width="748px" OnRowEditing="rowedit" OnRowUpdating="rowupdate">
                            <Columns>
                                <asp:BoundField DataField="用戶名" HeaderText="用戶名">
                                    <HeaderStyle Width="100px" />
                                    <ItemStyle Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="密碼" HeaderText="密碼">
                                    <HeaderStyle Width="100px" />
                                    <ItemStyle Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="性別" HeaderText="性別">
                                    <HeaderStyle Width="50px" />
                                    <ItemStyle Width="50px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="學號" HeaderText="學號">
                                    <HeaderStyle Width="100px" />
                                    <ItemStyle Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="學院" HeaderText="學院">
                                    <HeaderStyle Width="150px" />
                                    <ItemStyle Width="150px" />
                                </asp:BoundField>
                                <asp:CommandField ShowEditButton="True">
                                    <HeaderStyle Width="40px" />
                                    <ItemStyle Width="40px" />
                                </asp:CommandField>
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