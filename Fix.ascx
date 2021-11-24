<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Fix.ascx.cs" Inherits="Action_WebUserControl" %>



<div>
    <div class="forn_box">
        <div class="box">
            <div class="form_in">Tên Sinh Viên</div>
            <div class="form_infor"><asp:TextBox ID="TextBox_Name" runat="server"></asp:TextBox></div>
        </div>
        <div class="box">
            <div class="form_in">Giới Tính</div>
            <div class="form_infor"><asp:TextBox ID="TextBox_sex" runat="server"></asp:TextBox></div>
        </div>
        <div class="box">
            <div class="form_in">Ngày Sinh</div>
            <div class="form_infor"><asp:TextBox ID="TextBox_bỉth" runat="server"></asp:TextBox></div>
        </div>
        <div class="box">
            <div class="form_in">Địa chỉ</div>
            <div class="form_infor"><asp:TextBox ID="TextBox_location" runat="server"></asp:TextBox></div>
        </div>
        <asp:Button ID="Button" runat="server" Text="Ok" OnClick="Button_ok"/>
    </div>
</div> 