<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OlderWebApp.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container" style ="background-color:lavender;">
  <h2 class="text-center">Login</h2>
        <div class="form-group">
          <label>Username:</label>
          <input type="text" class="form-control" runat="server"  id="txtUsername" placeholder="Enter Username" name="username">
            <div id="invalid_1">&nbsp;</div>
        </div>
        <div class="form-group">
          <label>Password:</label>
          <input type="password" class="form-control" runat="server"  id="txtPassword" placeholder="Enter password" name="password">
          <div id="invalid_2">&nbsp;</div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="LOGIN" class="btn btn-default" type="submit" OnClick="Button1_Click" OnClientClick="return validate();"/>
</div>

<script type="text/javascript">
    function validate() {
        var name = document.getElementById('<%=txtUsername.ClientID%>').value;
        var pass = document.getElementById('<%=txtPassword.ClientID%>').value;
            if (name == "") {
                document.getElementById("invalid_1").innerHTML = '<small class="text-danger">กรุณาใส่ชื่อผู้ใช้</small>';
                document.getElementById('<%=txtUsername.ClientID%>').style.background = '#ffc2b3';
                return false;
            }else if(pass == ""){
		        document.getElementById("invalid_2").innerHTML = '<small class="text-danger">กรุณาใส่รหัสผ่าน</small>';
                document.getElementById('<%=txtPassword.ClientID%>').style.background = '#ffc2b3';
		        return false;
        } 
        return true;
    }
</script>
</asp:Content>
