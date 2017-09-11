<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="WebForm.Live.Create" EnableEventValidation="false"  %>

<%--There was a issue - so referred and disbaled event validation
Invalid postback or callback argument.  Event validation is enabled using < pages enableEventValidation="true"/> in configuration or < % @ Page EnableEventValidation="true" %> in a page.  For security purposes, this feature verifies that arguments to postback or callback events originate from the server control that originally rendered them.  If the data is valid and expected, use the ClientScriptManager.RegisterForEventValidation method in order to register the postback or callback data for validation.
https://stackoverflow.com/questions/228969/invalid-postback-or-callback-argument-event-validation-is-enabled-using-page--%>
<%----Error
                    Control 'CheckBoxList1' referenced by the ControlToValidate property of 'RequiredFieldValidator1' cannot be validated
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CheckBoxList1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                   Cant use Required field validator for checkbox so using custom validator with Javascript function call--%>
                    
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 138px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">TextB</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Columns="10" Rows="4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Numeric</td>
                <td>
                    <asp:TextBox ID="TextBox2" TextMode="Number" runat="server"></asp:TextBox>
                    <asp:RangeValidator Display="Dynamic" ID="RangeValidator1" ControlToValidate="TextBox2" runat="server" MinimumValue="1" MaximumValue="5" ErrorMessage="RangeValidator"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">CalJQ</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="TextBox3_CalendarExtender" Format="yyyy-MM-dd" runat="server" BehaviorID="TextBox3_CalendarExtender" TargetControlID="TextBox3" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">CalAjxExt</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ChkB</td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:CustomValidator ID="CustomValidator1" Display="Dynamic" ClientValidationFunction="ValidateCheckBoxList" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style2">Rad</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">CasDD1</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    <ajaxToolkit:CascadingDropDown ID="DropDownList1_CascadingDropDown" runat="server" 
                        Category="CascDD1"
                         ServicePath="~/AECommerceCMS/SB Admin Theme/AjaxControlWS.asmx" 
                        ServiceMethod="CascDD1Call"  BehaviorID="DropDownList1_CascadingDropDown" 
                         PromptText="Select CDD1" LoadingText="Loading Text"
                        TargetControlID="DropDownList1">
                    </ajaxToolkit:CascadingDropDown>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="DropDownList1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator> </td>
            </tr>
            <tr>
                <td class="auto-style2">CasDD2</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                    <ajaxToolkit:CascadingDropDown ID="DropDownList2_CascadingDropDown" runat="server" 
                       ServicePath="~/AECommerceCMS/SB Admin Theme/AjaxControlWS.asmx" 
                        ServiceMethod="CascDD2Call" Category="CDD2" 
                        BehaviorID="DropDownList2_CascadingDropDown" 
                         PromptText="Select CDD2" LoadingText="Loading Text"
                        ParentControlID="DropDownList1" TargetControlID="DropDownList2">
                    </ajaxToolkit:CascadingDropDown>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="DropDownList2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="auto-style2">ListBox</td>
                <td>
                    <asp:ListBox ID="ListBox1" runat="server">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                    </asp:ListBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="ListBox1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Pass</td>
                <td>
                    <asp:TextBox ID="Pwd" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">ConfPass</td>
                <td>
                    <asp:TextBox ID="ConfPwd" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" 
                       ControlToCompare="ConfPwd" ControlToValidate="Pwd" 
                       Operator="Equal"     runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">FileUpl</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="FileUpload1"
                         runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate >
                Loading from Button...
            </ProgressTemplate>
        </asp:UpdateProgress>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                UpdatePanel
            </ContentTemplate>
            <Triggers>
                <%--<asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />--%>  
                <%--with reference to this issue for file upload - https://www.aspsnippets.com/Articles/Why-Posted-File-is-NULL-and-HasFile-is-false-when-FileUpload-is-inside-AJAX-UpdatePanel-in-ASPNet.aspx--%>
                <asp:PostBackTrigger ControlID="Button1"  />
            </Triggers>
        </asp:UpdatePanel>
    </form>

    <script type="text/javascript">
        //As Checkbox control cant be validated directly with Required file validator, Im using Custom validator
        <%--Single Checkbox

           function ValidateCheckBox(sender, args) {
            if (document.getElementById("<%=CheckBox1.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
           }--%>

        //For CheckboxList

        function ValidateCheckBoxList(sender, args) {
        var checkBoxList = document.getElementById("<%=CheckBoxList1.ClientID %>");
        var checkboxes = checkBoxList.getElementsByTagName("input");
        var isValid = false;
        for (var i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
                isValid = true;
                break;
            }
        }
        args.IsValid = isValid;
    }
</script>

</body>
</html>
 