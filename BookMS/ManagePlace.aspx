<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManagePlace.aspx.cs" Inherits="BookMS.ManagePlace" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="ManagePlaceMain">
<div id="ManegLogin">
    <table style="border-right: #cccc66 1px solid; border-top: #cccc66 1px solid; border-left: #cccc66 1px solid; border-bottom: #cccc66 1px solid" cellpadding="0" cellspacing="0">
    <tr>
    <th style="background-color: #cccc66; width: 300px;">後臺登入</th>
    </tr>
    <tr>
    <td style="height: 30px"><asp:Label ID="Label1" runat="server" Text="帳號：" Width="100px"></asp:Label><asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox></td>
    </tr>
    <tr>
    <td style="height: 30px"><asp:Label ID="Label2" runat="server" Text="密码：" Width="100px"></asp:Label><asp:TextBox ID="TextBox2" runat="server" Width="150px" TextMode="Password"></asp:TextBox></td>
    </tr>
    <tr>
    <td style="height: 24px"><asp:Button ID="Button1" runat="server" Text="登入" Width="80px" OnClick="Button1_Click" />&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="註冊" Width="80px" OnClick="Button2_Click" /></td>
    </tr>
    </table>
    </div>
</div>
</asp:Content>