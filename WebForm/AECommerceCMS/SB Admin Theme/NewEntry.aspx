<%@ Page Title="" Language="C#" MasterPageFile="~/AECommerceCMS/SB Admin Theme/SBAdmin.Master" AutoEventWireup="true" CodeBehind="NewEntry.aspx.cs" Inherits="WebForm.AECommerceCMS.SB_Admin_Theme.NewEntry" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /*.auto-style1 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            margin-right: 0;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-offset-3 col-lg-4">
            <%--                <p>
                    <br />
                </p>
                <p>
                </p>--%>
            <div>
                <label class="text-center h2 ">New Item Entry</label>
            </div>
            <form id="form1" runat="server">
                <%--class="form-horizontal">--%>
                <asp:ScriptManager runat="server"></asp:ScriptManager>
                <%--Must to run any script or Ajax control kit working in page..
                         ScriptManagerProxy can be used on Page wise working.
                         ScriptManager can be for common for all pages by placing on Master page--%>
                   <label class="control-label">Item Name</label>
                    <asp:TextBox ID="IName" CssClass="form-control" runat="server" ValidationGroup="CreateVG"></asp:TextBox>
                    <ajaxToolkit:AutoCompleteExtender ID="IName_AutoCompleteExtender" runat="server" BehaviorID="IName_AutoCompleteExtender"
                        DelimiterCharacters="" MinimumPrefixLength="1" ServicePath="~/AECommerceCMS/SB Admin Theme/AjaxControlWS.asmx" ServiceMethod="AutoComplete"
                        TargetControlID="IName" />
                <div class="form-group">
                    <label class="control-label">Item Name</label>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                </div>

                <div class="form-group">
                    <label class="control-label">Upload Image/File</label>

                    <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                </div>
                <div class="form-group">
                    <label class="control-label">Select Gender</label>

                    <asp:RadioButtonList ID="RadioButtonList1" CssClass="form-control" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group">
                    <label class="control-label">Select Required subjects</label>
                    <asp:CheckBoxList ID="CheckBoxList1" CssClass="form-control" runat="server">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                    </asp:CheckBoxList>
                </div>
                <div class="form-group">
                    <label class="control-label">Select from DD</label>

                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="control-label">Select Date</label>

                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1"
                        TargetControlID="TextBox3" runat="server" />
                    <%--<asp:Calendar ID="Calendar1" CssClass="form-control" runat="server"></asp:Calendar>--%>
                </div>
                <div class="form-group">
                    <label class="control-label">Select Interested types</label>

                    <asp:ListBox ID="ListBox1" CssClass="auto-style1" runat="server" Width="185px" SelectionMode="Multiple">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                    </asp:ListBox>
                </div>
                <div class="form-group">
                    <label class="control-label">Write Comments</label>
                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Columns="50" Rows="3" TextMode="MultiLine"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label">Cascading DD1</label>
                    <asp:DropDownList ID="DropDownList2" CssClass="form-control"
                        runat="server">
                    </asp:DropDownList>
                    <ajaxToolkit:CascadingDropDown ID="CascadingDropDown1"
                        TargetControlID="DropDownList2" runat="server" LoadingText="Loading DD1"
                        PromptText="Please select DD1" Category="CascDD1"
                        ServicePath="~/AECommerceCMS/SB Admin Theme/AjaxControlWS.asmx"
                        ServiceMethod="CascDD1Call" />
                </div>
                <div class="form-group">
                    <label class="control-label">Cascading DD2</label>
                    <asp:DropDownList ID="DropDownList3" CssClass="form-control"
                        runat="server">
                    </asp:DropDownList>
                    <ajaxToolkit:CascadingDropDown ID="CascadingDropDown2"
                        TargetControlID="DropDownList3" runat="server" LoadingText="Loading DD2"
                        PromptText="Please select DD2" Category="CascDD2" ParentControlID="DropDownList2"
                        ServicePath="~/AECommerceCMS/SB Admin Theme/AjaxControlWS.asmx"
                        ServiceMethod="CascDD2Call" />
                </div>

                <div class="form-group">
                    <br />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CssClass="btn btn-default center-block" Text="Insert" OnClick="InsertButton_Click" />
                </div>
                <div>
                    <asp:Label ID="ErrorLable" CssClass="label-danger" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="SuccessLabel" CssClass="label-success" runat="server" Text="Label"></asp:Label>
                </div>
                <fieldset>
                    <legend>Fieldsetlegend</legend>
                    <div class="form-group">
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-default center-block" Text="Insert" OnClick="InsertButton_Click" />
                    </div>
                </fieldset>

            </form>
        </div>
    </div>

</asp:Content>
