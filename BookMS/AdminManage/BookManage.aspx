<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookManage.aspx.cs" Inherits="BookMS.AdminManage.BookManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../style/AdminStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 1200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="AdminManageMain" class="auto-style1">
            <div style="width: 1200px; text-align: right;">
                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" Width="100px">
        <asp:ListItem>書名</asp:ListItem>
        <asp:ListItem>作者</asp:ListItem>
        <asp:ListItem>圖書類別</asp:ListItem>
        <asp:ListItem>出版社</asp:ListItem>
        <asp:ListItem>所在書架</asp:ListItem>
        <asp:ListItem>圖書價格</asp:ListItem>
    </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" Text="確認查詢" Width="91px" OnClick="Button1_Click" />&nbsp;
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="流水號" Width="1200px" OnPageIndexChanging="PageChanging" OnRowCancelingEdit="RowCanceling" OnRowDeleting="RowDelete" OnRowEditing="RowEditing" OnRowUpdating="RowUpdating" CellPadding="2">
                <Columns>
                    <asp:BoundField DataField="書名" HeaderText="書名">
                        <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="作者" HeaderText="作者">
                        <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="圖書類別" HeaderText="圖書類別">
                        <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="出版社" HeaderText="出版社">
                        <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="出版日期" HtmlEncode="false" DataFormatString="{0:yyyy/MM/dd hh:mm:ss}" HeaderText="出版日期">
                        <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="入庫時間" HtmlEncode="false" DataFormatString="{0:yyyy/MM/dd hh:mm:ss}" HeaderText="入庫時間">
                        <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="圖書數量" HeaderText="圖書數量">
                        <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="所在書架" HeaderText="所在書架">
                        <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="圖書價格" DataFormatString="NT{0}元" HeaderText="圖書價格">
                        <ItemStyle Width="120px" />
                    </asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True" HeaderText="操作">
                        <ItemStyle Width="120px" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>