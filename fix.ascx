<%@ Control Language="C#" AutoEventWireup="true" CodeFile="fix.ascx.cs" Inherits="DetaiTH_fix" %>


<div>
    <div>
        <div class="form_input">
            <div>Người hướng dẫn</div>
            <div><asp:TextBox ID="TextBox_leader" runat="server"></asp:TextBox></div>
        </div>
        <div class="form_input">
            <div>Ngày bắt đầu</div>
            <div><asp:TextBox ID="TextBox_timebegin" runat="server"></asp:TextBox></div>
        </div>
        <div class="form_input">
            <div>ngày kết thúc</div>
            <div><asp:TextBox ID="TextBox_timefinish" runat="server"></asp:TextBox></div>
        </div>
        <asp:Button ID="Button_fix" runat="server" Text="OK" OnClick="Bitton_fix_click"/>
    </div>
</div>