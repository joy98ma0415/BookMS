<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Borrow.aspx.cs" Inherits="BookMS.Borrow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="BorrowMain">
        <table border="0" cellpadding="0" cellspacing="0" width="960">
            <tr>
                <td style="width: 960px">親愛的<strong style="color: Blue"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></strong>您好，請確認您要借閱的書籍，並可以對該書進行評價。
            &nbsp; &nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" Text="給書本留言" OnClick="Button1_Click" />&nbsp;
            <asp:Label ID="Label6" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 960px; text-align: center;">
                    <asp:DataList ID="DataList1" runat="server" Width="960px" RepeatColumns="1" ShowFooter="False" ShowHeader="False">
                        <ItemTemplate>
                            <table border="0" cellpadding="0" cellspacing="0" style="border: solid 1px #cc6; width: 500px; margin: 3px 230px 3px auto;">
                                <tr>
                                    <td style="width: 200px;" align="left">書名：<strong style="color: Blue"><%#DataBinder.Eval(Container.DataItem,"書名") %></strong></td>
                                    <td align="left">作者：<strong style="color: Blue"><%#DataBinder.Eval(Container.DataItem,"作者") %></strong></td>
                                </tr>
                                <tr>
                                    <td align="left">圖書類別：<strong style="color: Blue"><%#DataBinder.Eval(Container.DataItem,"圖書類別") %></strong></td>
                                    <td align="left">書版社：<strong style="color: Blue"><%#DataBinder.Eval(Container.DataItem,"出版社") %></strong></td>
                                </tr>
                                <tr>
                                    <td align="left">出版時間：<strong style="color: Blue"><%#DataBinder.Eval(Container.DataItem,"出版日期") %></strong></td>
                                    <td align="left">入庫時間：<strong style="color: Blue"><%#DataBinder.Eval(Container.DataItem,"入庫時間") %></strong></td>
                                </tr>
                                <tr>
                                    <td align="left">圖書數量：<strong style="color: Blue"><%#DataBinder.Eval(Container.DataItem,"圖書數量") %></strong></td>
                                    <td align="left">所在書架：<strong style="color: Blue"><%#DataBinder.Eval(Container.DataItem,"所在書架") %></strong></td>
                                </tr>
                                <tr>
                                    <td align="left">圖書價格：$<strong style="color: Red"><%#DataBinder.Eval(Container.DataItem,"圖書價格") %></strong>元</td>
                                    <td align="left"></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="16px" Text="確認借閱此書" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 960px; height: 82px;">
                    <asp:Panel ID="Panel1" runat="server" Width="960px">
                        <table border="0" cellpadding="0" cellspacing="0" style="border: solid 1px #cc6; width: 600px; margin: 3px auto 3px auto;">
                            <tr>
                                <td style="width: 300px" align="left">&nbsp; &nbsp;
                                留言：</td>
                                <td align="right">
                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                    &nbsp; &nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="height: 110px">
                                    <asp:TextBox ID="TextBox1" runat="server" Height="100px" TextMode="MultiLine" Width="560px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="Button3" runat="server" Text="提交" Width="100px" OnClick="Button3_Click" /></td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td style="width: 960px">
                    <hr />
                    <asp:DataList ID="DataList2" runat="server">
                        <ItemTemplate>
                            <table border="0" cellpadding="0" cellspacing="0" style="border: solid 1px #cc6; width: 960px; margin: 2px 0px;">
                                <tr>
                                    <td style="width: 960px" align="left">
                                        <strong style="color: Green">&nbsp;<asp:Label ID="Label3" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"讀者名") %>'></asp:Label>&nbsp;</strong>
                                        <span style="color: #ccc; font-size: 12px;">
                                            <asp:Label ID="Label4" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"留言時間") %>'></asp:Label>
                                        </span>發表</td>
                                </tr>
                                <tr>
                                    <td align="left" style="text-indent: 2em; width: 960px; height: 30px;">
                                        <asp:Label ID="Label5" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"留言內容") %>'></asp:Label></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>