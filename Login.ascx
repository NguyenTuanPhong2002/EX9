<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="CODE_EX_9.Action.Login" %>
<link href="../CSS/Login.css" rel="stylesheet" />

<body>
    <div class="login">
        <div class="header">NHẬP DỮ LIỆU SINH VIÊN</div>
        <div class="tool">
            <form id="form_input" runat="server">
                <div class="comment">Mã Số Sinh Viên</div>
                <div class="textbox"><asp:TextBox ID="TextBox_CodeStudent" runat="server"></asp:TextBox></div>
                <div class="button"><asp:Button ID="Button_Login" runat="server" Text="Login" OnClick="Button_Click"/></div>
            </form>
        </div>
    </div>
</body>