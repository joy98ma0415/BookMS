<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BorrowBook.aspx.cs" Inherits="BookMS.BorrowBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="BorrowBookMain">
        <table border="0" cellpadding="0" cellspacing="0" width="960">
            <tr>
                <td style="width: 470px; height: 30px" align="left">親愛的<strong style="color: Blue"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></strong>您好，歡迎您來到藏書屋。</td>
                <td align="right">&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="圖書類別">按類別</asp:ListItem>
                    <asp:ListItem Value="書名">按書名</asp:ListItem>
                    <asp:ListItem Value="作者">按作者</asp:ListItem>
                </asp:DropDownList>&nbsp;
                <asp:Button ID="Button1" runat="server" Text="查詢" Width="100px" OnClick="Button1_Click" />&nbsp;&nbsp; &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="960px" OnPageIndexChanging="GridView1_PageIndexChanging" Height="192px">
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="流水號" DataNavigateUrlFormatString="Borrow.aspx?id={0}"
                                DataTextField="書名" DataTextFormatString="{0}" HeaderText="書名">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:HyperLinkField>
                            <asp:BoundField DataField="作者" HeaderText="作者" />
                            <asp:BoundField DataField="圖書類別" HeaderText="書本類別" />
                            <asp:BoundField DataField="出版社" HeaderText="出版社" />
                            <asp:BoundField DataField="出版日期" HeaderText="出版日期" />
                            <asp:BoundField DataField="圖書數量" HeaderText="書本數量" />
                            <asp:BoundField DataField="所在書架" HeaderText="所在書架" />
                            <asp:BoundField DataField="圖書價格" DataFormatString="NT{0}元" HeaderText="圖書價格" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>