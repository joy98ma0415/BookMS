<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BookMS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="DefMain">
        <asp:Panel ID="Panel1" runat="server" Width="960px">
            <div id="DefUser">
                <table style="border-right: #cccc66 1px solid; border-top: #cccc66 1px solid; border-left: #cccc66 1px solid; border-bottom: #cccc66 1px solid" cellpadding="0" cellspacing="0">
                    <tr>
                        <th style="background-color: #cccc66; width: 300px;">讀者登入</th>
                    </tr>
                    <tr>
                        <td style="height: 30px">
                            <asp:Label ID="Label1" runat="server" Text="帳號：" Width="100px"></asp:Label><asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="height: 30px">
                            <asp:Label ID="Label2" runat="server" Text="密碼：" Width="100px"></asp:Label><asp:TextBox ID="TextBox2" runat="server" Width="150px" TextMode="Password"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="height: 24px">
                            <asp:Button ID="Button1" runat="server" Text="登入" Width="80px" OnClick="Button1_Click" />&nbsp;<asp:Button ID="Button2" runat="server" Text="註冊" Width="80px" OnClick="Button2_Click" /></td>
                    </tr>
                </table>
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Width="960px">
            <br />
            &nbsp;親愛的<strong style="color: Blue"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></strong>，歡迎您登入本系統。<asp:Button
                ID="Button3" runat="server" OnClick="Button3_Click" Text="退出" />
            <br />
            <br />
            <h5>&nbsp;書本管理系統使用說明：</h5>
            <br />
            <dl style="line-height: 30px">
                <dd>&nbsp;1、使用者登錄圖書館管理系統後，進入圖書館主介面，可以看到本系統使用說明。</dd>
                <dd>&nbsp;2、按一下巡覽列“藏書屋”連結，即可以進行圖書查詢和借閱，對圖書留言。</dd>
                <dd>&nbsp;3、按一下巡覽列“還書閣”連結，即可以進行圖書歸還。</dd>
                <dd>&nbsp;4、按一下巡覽列“善言堂”連結，即可以對圖書管理系統發表建議或者意見。</dd>
                <dd>&nbsp;5、按一下巡覽列“管理處”連結，即可以對圖書管理系統進行管理。</dd>
                <dt>&nbsp;</dt>
            </dl>
        </asp:Panel>
    </div>
</asp:Content>