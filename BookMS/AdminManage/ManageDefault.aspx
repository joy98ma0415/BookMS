<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageDefault.aspx.cs" Inherits="BookMS.AdminManage.ManageDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="AdminMain">
    <table border="0" cellpadding="0" cellspacing="0" width="960">
        <tr>
            <td style="width: 200px; background-color: #cccc66;" valign="top">
            <div id="AdminNav">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminManage/BookManage.aspx" Target="AdminIfra">書本管理</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AdminManage/BookInsert.aspx" Target="AdminIfra">書本添加</asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AdminManage/LeaveWordManage.aspx" Target="AdminIfra">書本留言管理</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AdminManage/SuggestManage.aspx" Target="AdminIfra">書本建議管理</asp:HyperLink>
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/AdminManage/userManage.aspx" Target="AdminIfra">讀者訊息管理</asp:HyperLink>
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/AdminManage/AdminReg.aspx" Target="AdminIfra">管理員註冊</asp:HyperLink></div></td>
            <td align="left" style=" border:solid 1px #cc6; background-color: #ffffff;">
            <div id="AdminIfraTop" style=" width:753px; text-indent:2em;">親愛的管理員<strong style="color:Blue"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></strong>您好，歡迎您來到管理處。
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="退出後台" /></div>
            <iframe name="AdminIfra" style="width: 753px; height: 443px; background-color: #ffffff;" frameborder="0" marginheight="0" marginwidth="0" src="BookManage.aspx"></iframe>
            </td>
        </tr>
    </table>
</div>
</asp:Content>