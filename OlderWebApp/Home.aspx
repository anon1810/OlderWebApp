<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OlderWebApp.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>HOME</h1>
    <label id="lblName"  runat="server"></label>
    <label id="lblusername"  runat="server"></label>
    <label id="lblpassword"  runat="server"></label>
    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click"/>

    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <asp:GridView ID="GridView1" runat="server"></asp:GridView>


            <asp:GridView ID="gvMovie" runat="server" AutoGenerateColumns="false" CssClass="table" GridLines="None" >
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="รหัสภาพยนต์" />
                    <asp:BoundField DataField="title" HeaderText="ชื่อภาพยนต์" />
                    <asp:TemplateField HeaderText="รูป">
                        <ItemTemplate>
                            <asp:Image Height="80px" ImageUrl='<%# Eval("coverImg") %>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="releaseDate" HeaderText="เข้าฉายเมื่อ" />
                    <asp:BoundField DataField="genre" HeaderText="หมวดหมู่" />
                    <asp:BoundField DataField="duration" HeaderText="ความยาม (นาที)" />
                </Columns>
            </asp:GridView>

</asp:Content>
