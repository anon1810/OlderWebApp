<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="OlderWebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
      <form method="get" action="Home.aspx"  runat="server">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="text" class="form-control" id="username" placeholder="Enter email" name="username">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="text" class="form-control" id="password" placeholder="Enter password" name="password">
    </div>
    <button type="submit" class="btn btn-default" value="Submit">LOGIN</button>
    <a href="Home.aspx"  type="submit" >Link Button</a>
  </form>
</body>
</html>
