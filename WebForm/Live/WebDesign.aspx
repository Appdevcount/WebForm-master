4<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebDesign.aspx.cs" Inherits="WebForm.Live.WebDesign" %>

<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><title></title></head><body><form id="form1" runat="server">
    <div>
        <asp:Image ID="Image1" ImageUrl="http://localhost/images/tf.jpg" runat="server" />
        <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Disc" Target="_blank">
            <asp:ListItem>A</asp:ListItem>
            <asp:ListItem>B</asp:ListItem>
            <asp:ListItem>C</asp:ListItem>
        </asp:BulletedList> </div>
    </form>
</body>
</html>
