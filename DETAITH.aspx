<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DETAITH.aspx.cs" Inherits="DETAITH" %>

<%@ Register Src="~/DetaiTH/Control.ascx" TagPrefix="uc1" TagName="Control" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang quản lý đề tài</title>
    <link href="CSS_Detai/THDETAI.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">Thực hành đề tài</div>
            <div class="contener">
                <div class="main">
                    <table class="infor">
                        <tr>
                            <th class="code">Đề tài</th>
                            <th class="code_student">Sinh Viên</th>
                            <th class="leader">Người hướng dẫn</th>
                            <th class="time_begin">Ngày bắt đầu</th>
                            <th class="time_up">Ngày kết thúc</th>
                            <th class="tool">Coong cuj</th>
                        </tr>
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </table>
                    <uc1:Control runat="server" ID="Control1" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
