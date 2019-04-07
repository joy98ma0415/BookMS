<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SuggestPlace.aspx.cs" Inherits="BookMS.SuggestPlace" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="SuggestPlaceMain">
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td style="width: 960px" align="left">親愛的<strong style="color: Blue"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></strong>您好，歡迎您來到善言堂，請留下您寶貴的意見或建議，謝謝。
            &nbsp;
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td style="height: 38px">
                    <asp:Panel ID="Panel1" runat="server" Width="960px" Height="140px" HorizontalAlign="Right">
                        <asp:TextBox ID="TextBox1" runat="server" Height="100px" TextMode="MultiLine" Width="960px"></asp:TextBox><br />
                        <asp:Button ID="Button1"
                            runat="server" Text="提交" Width="100px" OnClick="Button1_Click" />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <hr />
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                            <table border="0" cellpadding="0" cellspacing="0" style="border: solid 1px #cc6; width: 960px; margin: 2px 0px;">
                                <tr>
                                    <td style="width: 960px" align="left">
                                        <strong style="color: Green">&nbsp;<asp:Label ID="Label3" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"讀者名") %>'></asp:Label>&nbsp;</strong>
                                        <span style="color: #ccc; font-size: 12px;">
                                            <asp:Label ID="Label4" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"建議時間") %>'></asp:Label>
                                        </span>發表</td>
                                </tr>
                                <tr>
                                    <td align="left" style="text-indent: 2em; width: 960px; height: 30px;">
                                        <asp:Label ID="Label5" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"建議內容") %>'></asp:Label></td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>