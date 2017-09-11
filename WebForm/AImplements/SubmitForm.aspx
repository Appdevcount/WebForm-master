<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SubmitForm.aspx.cs" Inherits="WebForm.AImplements.SubmitForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <link href="../Scripts/jquery-ui.min.css" rel="stylesheet" />
    <link href="../Scripts/jquery-ui.theme.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-ui.min.js"></script>
    <script src="../Scripts/moment.min.js"></script>
    <script type="text/javascript">
        $(document).ready(
            function () {
                $('#<%=TextBox1.ClientID %>').datepicker();//Server side will generate client id for controls based on hierarchy so , should refer server ids as here
                $('#dd').datepicker(
                     {
                         appendText: 'yyyy-MM-dd',
                         showOn: 'both',
                         buttonText: 'Select Date',
                         buttonImage: '/AECommerceCMS/SB%20Admin%20Theme/CalenderButtonImage.png',
                         buttonImageOnly: true,
                         //dateFormat: 'yyyy-MM-dd',
                         changeMonth: true,
                         changeYear: true,
                         minDate: new Date(2015, 01, 01),
                         maxDate: new Date(2017, 01, 02)

                     });
                //document.write(Date().Now);
                //document.write(Date().toString());
                //document.write(Date().Now);
                //document.write(Date().Now);
                var previousDate;

                $("#dd").focus(function () {
                    previousDate = $(this).val();;
                });
                $("#dd").blur(function () {
                    var newDate = $(this).val();
                    if (!moment(newDate, 'DD/MM/YYYY', true).isValid()) {
                        $(this).val(previousDate);
                        console.log("Error");
                    }
                });
            }
            );
    </script>
    <style type="text/css">
        .box.box-primary {
            border-top-color: #3c8dbc;
        }

        .box {
            position: relative;
            border-radius: 3px;
            background: #ffffff;
            border-top: 3px solid #d2d6de;
            border-bottom: 1px solid grey;
            border-right: 1px solid grey;
            border-left: 1px solid grey;
            /*padding: 5px 5px 5px 5px;*/ /*added by me then removed*/
            margin-bottom: 20px;
            width: 100%;
            box-shadow: 0 1px 1px rgba(0,0,0,0.1);
        }


        .box-header {
            color: #444;
            display: block;
            padding: 10px;
            position: relative;
        }

            .box-header.with-border {
                border-bottom: 1px solid #f4f4f4;
            }

        .box-body {
            border-top-left-radius: 0;
            border-top-right-radius: 0;
            border-bottom-right-radius: 3px;
            border-bottom-left-radius: 3px;
            padding: 10px;
        }

        .box-footer {
            border-top-left-radius: 0;
            border-top-right-radius: 0;
            border-bottom-right-radius: 3px;
            border-bottom-left-radius: 3px;
            border-top: 1px solid #f4f4f4;
            padding: 10px;
            background-color: #fff;
        }

        form {
            display: block;
            margin-top: 0em;
        }
    </style>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" Text="*" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="*" runat="server" />
    <input type="text" id="dd" />
    <div class="row">
        <div class="col-lg-offset-4 col-lg-3">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Quick Example</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form role="form">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputFile">File input</label>
                            <input type="file" id="exampleInputFile">

                            <p class="help-block">Example block-level help text here.</p>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">
                                Check me out
                            </label>
                        </div>
                    </div>
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>

            <%--====================--%>
            <asp:Wizard ID="Wizard1" runat="server" HeaderText="Wizard Main Header" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="5"
                DisplayCancelButton="True" CancelButtonText="CancelPanriya" CssClass="well"
                OnActiveStepChanged="Wizard1_ActiveStepChanged" OnCancelButtonClick="Wizard1_CancelButtonClick"
                OnFinishButtonClick="Wizard1_FinishButtonClick" OnNextButtonClick="Wizard1_NextButtonClick"
                OnPreviousButtonClick="Wizard1_PreviousButtonClick" BackColor="#F7F6F3" BorderStyle="Solid" Font-Names="Verdana" Font-Size="0.8em">
 <%--               <FinishNavigationTemplate>
                    <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish" />
                </FinishNavigationTemplate>
                <SideBarTemplate>
                    <asp:DataList ID="SideBarList" runat="server">
                        <ItemTemplate>
                            <asp:LinkButton ID="SideBarButton" runat="server"></asp:LinkButton>
                        </ItemTemplate>
                        <SelectedItemStyle Font-Bold="True" />
                    </asp:DataList>
                </SideBarTemplate>
                <StartNavigationTemplate>
                    <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                </StartNavigationTemplate>
                <StepNavigationTemplate>
                    <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                </StepNavigationTemplate>--%>
                <FinishNavigationTemplate>
                    <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="FinishButton" runat="server" CssClass="btn btn-info" CommandName="MoveComplete" Text="Finish"  />
                    <asp:Button ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="CancelPanriya" />
                </FinishNavigationTemplate>
                <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
                <SideBarTemplate>
                    <asp:DataList ID="SideBarList" runat="server">
                        <ItemTemplate>
                            <asp:LinkButton ID="SideBarButton" runat="server"></asp:LinkButton>
                        </ItemTemplate>
                        <SelectedItemStyle Font-Bold="True" />
                    </asp:DataList>
                </SideBarTemplate>
                <StartNavigationTemplate>
                    <asp:Button ID="StartNextButton" OnClientClick="return confirm('Are you sure to Proceed?')" runat="server" CssClass="btn btn-info" CommandName="MoveNext" Text="Next" />
                    <asp:Button ID="CancelButton" OnClientClick="return confirm('Are you sure to Cancel?')"  runat="server" CausesValidation="False" CommandName="Cancel" Text="CancelPanriya" />
                </StartNavigationTemplate>
                <StepNavigationTemplate>
                    <asp:Button ID="StepPreviousButton" OnClientClick="return confirm('Are you sure to Prvevious?')"  ToolTip="Education Info" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="StepNextButton" runat="server" OnClientClick="return confirm('Are you sure to Proceed?')"  CssClass="btn btn-info" CommandName="MoveNext" Text="Next" />
                    <asp:Button ID="CancelButton" OnClientClick="return confirm('Are you sure to Cancel?')"  runat="server" CausesValidation="False" CommandName="Cancel" Text="CancelPanriya" />
                </StepNavigationTemplate>
                <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
                <HeaderTemplate>
                    Header TEmplate
                </HeaderTemplate>
                <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                        <div class="form-group-sm">
                            <label class="control-label">Item Decsription</label>
                            <asp:TextBox ID="Idesc" CssClass="form-control" TextMode="MultiLine" runat="server" ValidationGroup="CreateVG"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ControlToValidate="Idesc" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        </div>

                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                        <div class="form-group-sm">
                            <label class="control-label">Item Decsription</label>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" TextMode="MultiLine" runat="server" ValidationGroup="CreateVG"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="Idesc" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        </div>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep3" runat="server" Title="Step 2">
                        <div class="form-group-sm">
                            <label class="control-label">Item Decsription</label>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" TextMode="MultiLine" runat="server" ValidationGroup="CreateVG"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ControlToValidate="Idesc" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        </div>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>

        </div>
    </div>
</asp:Content>
