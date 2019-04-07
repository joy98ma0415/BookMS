<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReturnBook.aspx.cs" Inherits="BookMS.ReturnBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="ReturnBookMain">
        <table border="0" cellpadding="0" cellspacing="0" width="960">
            <tr>
                <td style="width: 960px" align="left">親愛的<strong style="color: Blue"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></strong>您好，歡迎您來到還書閣，以下是您借閱的圖書。
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="960px" OnPageIndexChanging="PageChanging" DataKeyNames="流水號" OnRowDeleting="ReturnBooking">
                        <Columns>
                            <asp:BoundField DataField="書名" HeaderText="書名" />
                            <asp:BoundField DataField="作者" HeaderText="作者" />
                            <asp:BoundField DataField="圖書類別" HeaderText="圖書類別" />
                            <asp:BoundField DataField="出版社" HeaderText="出版社" />
                            <asp:BoundField DataField="出版日期" HeaderText="出版日期" />
                            <asp:BoundField DataField="圖書數量" HeaderText="圖書數量" />
                            <asp:BoundField DataField="所在書架" HeaderText="所在書架" />
                            <asp:BoundField DataField="圖書價格" DataFormatString="NT{0}元" HeaderText="圖書價格" />
                            <asp:CommandField DeleteText="還書" HeaderText="操作" ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>