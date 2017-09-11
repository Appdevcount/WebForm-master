<%@ Page Title="" Language="C#" MasterPageFile="~/AECommerceCMS/ECommerceCMS.Master" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="WebForm.AECommerceCMS.Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container " style="margin: auto; position: absolute;">
        <div class="row">
            <div class="col-lg-offset-3 col-lg-6 wellc">
                <div class="well " >

                    <div class="col-lg-9 ">

                        <label class="text-center ">Sign Up</label>
                    </div>
                    <div class="col-lg-9 form-group">
                        <asp:Label ID="Label5" CssClass="control-label" runat="server" Text="Label">Username</asp:Label>
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-lg-9 form-group">
                        <asp:Label ID="Label2" CssClass="control-label" runat="server" Text="Label">Check the required</asp:Label>
                        <asp:RadioButtonList ID="RadioButtonList1" CssClass="form-control" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-lg-9 form-group">
                        <asp:Label ID="Label3" CssClass="control-label" runat="server" Text="Label">Select the required</asp:Label>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem Value="B"></asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
                    <div class="col-lg-9 form-group">
                        <asp:Label ID="Label4" CssClass="control-label" runat="server" Text="Label">Select from Dropdown</asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-9 form-group">
                        <asp:Label ID="Label6" CssClass="control-label" runat="server" Text="Label">Upload file</asp:Label>
                        <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                    </div>
                    <div class="col-lg-9 form-group">
                        <asp:Label ID="Label7" CssClass="control-label" runat="server" Text="Label">Multi Select</asp:Label>
                        <asp:ListBox ID="ListBox1" CssClass="form-control" runat="server">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                        </asp:ListBox>
                    </div>
                    <div class="col-lg-9 form-group">
                        <asp:Label ID="Label8" CssClass="control-label" runat="server" Text="Label">Date</asp:Label>
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" />
                        <asp:Calendar ID="Calendar1" CssClass="form-control" runat="server"></asp:Calendar>
                    </div>
                    <div class="col-lg-9 form-group" style="left: 0px; top: 1px">
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" CssClass="btn btn-primary" />
                    </div>
                    </div>
                </div>
            </div>
        </div>

</asp:Content>
