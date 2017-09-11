<%@ Page Title="" Language="C#" MasterPageFile="~/AECommerceCMS/SB Admin Theme/SBAdmin.Master"
    EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="WebForm.AECommerceCMS.SB_Admin_Theme.Create" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Src="~/AECommerceCMS/SB Admin Theme/UserControlSeparationDesign/CalenderUserControl.ascx" TagPrefix="uc1" TagName="CalenderUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-offset-4 col-lg-4">
            <div class="well">
                <div class="h1 center-block">New Item Creation</div>
                <hr />
                <form runat="server" class="form-horizontal">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <div class="form-group-sm">
                        <label class="control-label">Item Name</label>
                        <asp:TextBox ID="IName" CssClass="form-control" runat="server"></asp:TextBox>
                        <ajaxToolkit:AutoCompleteExtender ID="IName_AutoCompleteExtender" runat="server" BehaviorID="IName_AutoCompleteExtender"
                            DelimiterCharacters="" MinimumPrefixLength="1" ServicePath="~/AECommerceCMS/SB Admin Theme/AjaxControlWS.asmx" ServiceMethod="AutoComplete"
                            TargetControlID="IName" CompletionSetCount="2" UseContextKey="true" ContextKey="TEST" CompletionInterval="250">
                        </ajaxToolkit:AutoCompleteExtender>
                        <%--                    Ajax Control tool kit and  Validators are not working together in page and also for specific controls together , 
                        so have to disable unobtrusive validation as key in web.config as per
                    https://forums.asp.net/t/1876231.aspx?ASP+Net+4+5+Validation+Controls+not+working+with+AJAX+ToolkitScriptManager1 --%>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*"
                            ControlToValidate="IName" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group-sm">
                        <label class="control-label">Item Decsription</label>
                        <asp:TextBox ID="Idesc" CssClass="form-control" TextMode="MultiLine" runat="server" ValidationGroup="CreateVG"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ControlToValidate="Idesc" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group-sm">
                        <label class="control-label">Item Type</label>
                        <asp:DropDownList ID="Itype" CssClass="form-control" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Type" DataValueField="GID">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" InitialValue="0" ControlToValidate="Itype" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                        <%--ddlCustomers.Items.Insert(0, new ListItem("--Select Customer--", "0")); Add default values explicity from code behind after loading from data source in the same select method--%>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="*" InitialValue="" ValidationGroup="CreateVG" ControlToValidate="Itype" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GenderData" TypeName="ClassLibraryProject.EFDF.DAL"></asp:ObjectDataSource>
                    </div>
                    <div class="form-group-sm">
                        <label class="control-label">Available Count</label>
                        <asp:TextBox ID="AvailableCount" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AvailableCount" MinimumValue="1" MaximumValue="2000000" ErrorMessage="RangeValidator"></asp:RangeValidator>
                    </div>
                    <div class="form-group-sm">
                        <label class="control-label">From Date</label>
                        <asp:TextBox ID="Fromdate" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:Calendar ID="FromdateCalendar" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px"></DayHeaderStyle>

                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF"></NextPrevStyle>

                            <OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>

                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99"></SelectedDayStyle>

                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666"></SelectorStyle>

                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px"></TitleStyle>

                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White"></TodayDayStyle>

                            <WeekendDayStyle BackColor="#CCCCFF"></WeekendDayStyle>
                        </asp:Calendar>
                    </div>
                    <div class="form-group-sm">
                        <label class="control-label">To Date</label>
                        <div class="form-inline">
                            <asp:TextBox ID="Todate" CssClass="form-control" runat="server"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/AECommerceCMS/SB Admin Theme/CalenderButtonImage.png" Width="29px" />
                            <ajaxToolkit:CalendarExtender ID="TodateCalendarExtender1" TargetControlID="Todate" Format="yyyy-MM-dd" PopupButtonID="ImageButton1" runat="server" />
                        </div>
                        <%--<asp:CompareValidator ID="CompareValidator1" ControlToValidate runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>--%>
                    </div>
                    <div class="form-group-sm">
                        <label class="control-label">Publish User Control Date</label>
                        <div class="form-inline">
                            <uc1:CalenderUserControl runat="server" ID="CalenderUserControl" />
                            <%--    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="CalenderUserControl:TextBox1"  ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            --%>
                        </div>
                    </div>
                    <div class="form-group-sm">
                        <label class="control-label">Intem Intro Date</label>
                        <asp:TextBox ID="Itemintrodate" runat="server" CssClass="form-control"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="Itemintrodate_CalendarExtender" runat="server" BehaviorID="Itemintrodate_CalendarExtender"
                            PopupPosition="BottomRight" PopupButtonID="" TargetControlID="Itemintrodate" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Itemintrodate" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group-sm">
                        <label class="control-label">Email</label>
                        <asp:TextBox ID="Email" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email"
                            ErrorMessage="Enter Valid Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group-sm">
                        <label class="control-label">Interested Topic Checks</label><br />
                        <asp:CheckBoxList ID="InterestedTopicCheckBoxList1" runat="server"
                            DataSourceID="ObjectDataSource1" DataTextField="Type" DataValueField="GID" RepeatDirection="Horizontal">
                        </asp:CheckBoxList>
                    </div>

                    <div class="form-group-sm">
                        <label class="control-label">Gender</label>
                        <asp:RadioButtonList ID="GenderRadioButtonList1" RepeatDirection="Horizontal" runat="server"
                            DataSourceID="ObjectDataSource1" DataTextField="Type" DataValueField="GID">
                        </asp:RadioButtonList>
                    </div>
                    <div class="form-group-sm">
                        <label class="control-label">Continent</label>
                        <asp:DropDownList ID="ContinentDropDownList1" CssClass="form-control" runat="server">
                        </asp:DropDownList>
                        <%--DataSourceID="ObjectDataSource1" 
                        DataTextField="Type" DataValueField="GID"--%>
                        <ajaxToolkit:CascadingDropDown ID="ContinentDropDownList1_CascadingDropDown" runat="server"
                            PromptText="Please select Continent" Category="CascDD1" LoadingText="Loading Continents"
                            BehaviorID="ContinentDropDownList1_CascadingDropDown" TargetControlID="ContinentDropDownList1"
                            ServicePath="~/AECommerceCMS/SB Admin Theme/AjaxControlWS.asmx"
                            ServiceMethod="CascDD1Call" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"
                            ControlToValidate="ContinentDropDownList1" InitialValue=""></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group-sm">
                        <label class="control-label">Country&nbsp;&nbsp;&nbsp; </label>
                        <asp:DropDownList ID="CountryDropDownList2" CssClass="form-control" runat="server"></asp:DropDownList>

                        <ajaxToolkit:CascadingDropDown ID="CountryDropDownList2_CascadingDropDown" runat="server"
                            PromptText="Please Select Country" Category="CascDD2" LoadingText="Loading Countries" 
                            ParentControlID="ContinentDropDownList1"
                            BehaviorID="CountryDropDownList2_CascadingDropDown" TargetControlID="CountryDropDownList2"
                            ServicePath="~/AECommerceCMS/SB Admin Theme/AjaxControlWS.asmx"
                            ServiceMethod="CascDD2Call" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"
                            ControlToValidate="CountryDropDownList2" InitialValue=""></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group-sm">
                        <label class="control-label">ConfirmText1</label>
                        <asp:TextBox ID="ConfirmText1TextBox1" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                        <%--<ajaxToolkit:PasswordStrength ID="PasswordStrength1" TargetControlID="ConfirmText1TextBox1" runat="server" PreferredPasswordLength="5" />--%>
                    </div>
                    <div class="form-group-sm">
                        <label class="control-label">ConfirmText2</label>
                        <asp:TextBox ID="ConfirmText2TextBox2" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmText1TextBox1" 
                            ControlToCompare="ConfirmText2TextBox2"
                            Type="String" Operator="Equal" runat="server" ErrorMessage="CompareValidator" 
                            ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                        <%--if you make the Password box the ControlToValidate, and the Confirm Password box the ControlToCompare, then it will work because the password box will have something in it and hence will run the validation.

                        Of course, this could allow them to submit a form with an empty Password box and a filled-in Confirm box, so putting a required validator on both is probably a better idea.
                        --%>
                    </div>

                    <div class="form-group-sm">
                        <label class="control-label">Interested Topic Multi</label>
                        <asp:ListBox ID="InterestedTopicMultiListBox1" CssClass="form-control " runat="server" DataSourceID="ObjectDataSource1" DataTextField="Type" DataValueField="GID" SelectionMode="Multiple"></asp:ListBox>
                    </div>
                    <div class="form-group-sm">
                        <label class="control-label">File Doc</label>
                        <asp:FileUpload ID="FileDocUpload1" CssClass="btn-block btn-default" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileDocUpload1"
                            ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group-sm">
                        <label class="control-label">File Image</label>
                        <asp:FileUpload ID="FileImageUpload2" CssClass="btn-block btn-default" runat="server" />
                    </div>
                    <div class="form-group-sm ">
                        <asp:Button ID="CreateButton1" CssClass="btn btn-primary center-block" runat="server" Text="Create" OnClick="CreateButton1_Click" />
                    </div>

                    <asp:ValidationSummary ID="ValidationSummary1" ShowSummary="true" ShowValidationErrors="true" runat="server" />
                    <br />
                    <div class="form-group-sm ">
                        <asp:Label ID="LabelStatusFailure" Visible="false" CssClass="alert alert-danger" runat="server" Text="Label">Item Created </asp:Label>
                    </div>
                    <br />
                    <div class="form-group-sm ">
                        <asp:Label ID="LabelStatusSuccess" Visible="false" CssClass="alert alert-success" runat="server" Text="Label"> Creation Failed for some reason</asp:Label>
                    </div>

                </form>
            </div>
        </div>
    </div>
    <script src="../../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../../Scripts/jquery-ui.min.js"></script>
    <link href="../../Scripts/jquery-ui.min.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#Email').autocomplete(
               {
                   source: ['Choice1', 'Choice2']
                   //source://associating a callbackfunction for the source as below
                   //source: function (request, response) {
                   //    $.ajax(
                   //        {
                   //            url: '../AECommerceCMS/SB Admin Theme/AjaxControlWS.asmx/AutoCompleteJQUI',
                   //            method: 'post',
                   //            contentType: 'application/json',
                   //            dataType: 'json',
                   //            data: JSON.stringify({ term: request.term }),
                   //            success: function (data) {
                   //                response(data.d);
                   //            },
                   //            error: function (err) {
                   //                alert(err);
                   //            }
                   //        }
                   //    )
                   //},
                   //minlength: 1
               })
        });

    </script>

</asp:Content>
