<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DSDKDETAI.aspx.cs" Inherits="DSDKDETAI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DANH SÁCH ĐĂNG KÍ ĐỀ TÀI</title>
    <link href="CSS_DSDKDETAI/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="contener">
            <div class="header">DANH SÁCH ĐĂNG KÍ ĐỀ TÀI 
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Xem" OnClick="Button1_Click"/>
            </div>
            <div>Tên đề tài: <asp:Literal ID="Literal1" runat="server"></asp:Literal></div>
            <div>Loại đề tài: <asp:Literal ID="Literal2" runat="server"></asp:Literal></div>
            <div>Tổng số sinh viên đăng kí: <asp:Literal ID="Literal3" runat="server"></asp:Literal></div>
            <div class="fom">
                <div class="main">
                    <table class="infor">
                        <tr>
                            <th>Mã sinh viên</th>
                            <th>Tên sinh viên</th>
                            <th>Giới tính</th>
                            <th>Ngày sinh</th>
                            <th>Địa chỉ</th>
                            <th>Ghi chú</th>
                        </tr>
                        <asp:Literal ID="Literal4" runat="server"></asp:Literal>
                    </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
