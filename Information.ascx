<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Information.ascx.cs" Inherits="Action_Information" %>
<link href="../CSS/Information.css" rel="stylesheet" />

<div>
    <div class="forn_box">
        <div class="box">
            <div class="form_in">Tên Sinh Viên</div>
            <div class="form_infor"><asp:Literal ID="Literal_Name" runat="server"></asp:Literal></div>
        </div>
        <div class="box">
            <div class="form_in">Giới Tính</div>
            <div class="form_infor"><asp:Literal ID="Literal_sex" runat="server"></asp:Literal></div>
        </div>
        <div class="box">
            <div class="form_in">Ngày Sinh</div>
            <div class="form_infor"><asp:Literal ID="Literal_birth" runat="server"></asp:Literal></div>
        </div>
        <div class="box">
            <div class="form_in">Địa chỉ</div>
            <div class="form_infor"><asp:Literal ID="Literal_location" runat="server"></asp:Literal></div>
        </div>
    </div>

        <div class="button"><asp:Button ID="Button1" runat="server" Text="Fix" OnClick="fix_click"/></div>
    <asp:PlaceHolder ID="PlaceHolder_fix" runat="server"></asp:PlaceHolder>

</div> 