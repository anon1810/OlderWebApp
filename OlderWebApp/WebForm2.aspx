<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="OlderWebApp.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button
                        Text="Submit"
                        runat="server"
                        class="btn btn-primary"
                        ID="Button1"
                        OnClick="Button1_Click"/>
</asp:Content>
