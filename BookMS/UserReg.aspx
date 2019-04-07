<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="BookMS.UserReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 960px; background-color: #fff;">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 500px; margin: 10px auto 10px auto; border: solid 1px #ddd;">
            <tr>
                <th colspan="2" style="text-align: center;">讀者註冊</th>
            </tr>
            <tr>
                <td style="width: 200px; text-align: right;">帳號：</td>
                <td style="width: 300px; text-align: left;">
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 200px; text-align: right;">密碼：</td>
                <td style="width: 300px; text-align: left;">
                    <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 200px; text-align: right;">性別：</td>
                <td style="width: 300px; text-align: left;">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="150px">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 200px; text-align: right;">學院：</td>
                <td style="width: 300px; text-align: left;">
                    <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 200px; text-align: right;">學號：</td>
                <td style="width: 300px; text-align: left;">
                    <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確認註冊
                        "
                        Width="100px" /></td>
            </tr>
        </table>
    </div>
</asp:Content>