<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SINHVIEN.aspx.cs" Inherits="CODE_EX_9.WebForm1" %>

<%@ Register Src="~/Action/Action_Navigation.ascx" TagPrefix="uc1" TagName="Action_Navigation" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang quản lý sinh viên</title>
    <link href="CSS/Default.css" rel="stylesheet" />
    <link href="CSS/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>TRANG QUẢN LÝ SINH VIÊN</header>
            <conterner>
                <div class="login">
                    <div class="login">
                        <div class="header">NHẬP DỮ LIỆU SINH VIÊN</div>
                        <div class="tool">
                         
                                <div class="comment">Mã Số Sinh Viên</div>
                                <div class="textbox">
                                    <asp:TextBox ID="TextBox_CodeStudent" runat="server"></asp:TextBox>
                                </div>
                                <div class="button">
                                    <asp:Button ID="Button_Login" runat="server" Text="Login" OnClick="Button_Click" />
                                </div>
                        </div>
                    </div>
                </div>
                <div class="display">
                    <uc1:action_navigation runat="server" id="Action_Navigation" />
                </div>
            </conterner>
        </div>
    </form>
</body>
</html>
