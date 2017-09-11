<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="WebForm.AECommerceCMS.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </p>
    <p>
        <asp:Image ID="Image1" runat="server" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <br />
    <br />
</asp:Content>
