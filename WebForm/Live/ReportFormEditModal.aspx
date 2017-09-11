<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportFormEditModal.aspx.cs" Inherits="WebForm.Live.ReportFormEditModal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" />
                            <asp:BoundField DataField="TBOX" HeaderText="TBOX" ReadOnly="True" />
                            <asp:BoundField DataField="DD" HeaderText="DD" ReadOnly="True" />
                            <asp:BoundField DataField="CB" HeaderText="CB" ReadOnly="True" />
                            <asp:BoundField DataField="RB" HeaderText="RB" ReadOnly="True" />
                            <asp:ButtonField ButtonType="Button" HeaderText="BOOTSTRAPMODALEDIT" ControlStyle-CssClass="btn-block" CommandName="EDITMODAL" Text="EDIT" />
                        </Columns>
                    </asp:GridView>
                    <asp:Button ID="Button2" CssClass="btn btn-primary center-block" runat="server" OnClick="Button2_Click" Text="Save" />
                </ContentTemplate>
            </asp:UpdatePanel>

            <%--Bootstrap site is excellent source of documentation for Modal - http://getbootstrap.com/javascript/#modals-usage --%>

            <div class="modal fade" id="TESTmyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Edit Record</h4>
                        </div>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <div class="modal-body">
                                    <div class="form-horizontal">
                                        <div class="form-group-sm">
                                            <label class="control-label">Item Name</label>
                                            <asp:TextBox ID="IName" CssClass="form-control" runat="server"></asp:TextBox>

                                        </div>
                                        <%--                                        <div class="form-group-sm">
                                            <label class="control-label">Item Decsription</label>
                                            <asp:TextBox ID="Idesc" CssClass="form-control" TextMode="MultiLine" runat="server" ValidationGroup="CreateVG"></asp:TextBox>

                                        </div>
                                        <div class="form-group-sm">
                                            <label class="control-label">Item Type</label>
                                            <asp:DropDownList ID="Itype" CssClass="form-control" runat="server" DataTextField="Type" DataValueField="GID">
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group-sm">
                                            <label class="control-label">Available Count</label>
                                            <asp:TextBox ID="AvailableCount" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group-sm">
                                            <label class="control-label">From Date</label>
                                            <asp:TextBox ID="Fromdate" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="form-group-sm">
                                            <label class="control-label">To Date</label>
                                            <div class="form-inline">
                                                <asp:TextBox ID="Todate" CssClass="form-control" runat="server"></asp:TextBox>
                                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/AECommerceCMS/SB Admin Theme/CalenderButtonImage.png" Width="29px" />
                                            </div>

                                            <div class="form-group-sm">
                                                <label class="control-label">Email</label>
                                                <asp:TextBox ID="Email" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group-sm">
                                                <label class="control-label">Interested Topic Checks</label><br />
                                                <asp:CheckBoxList ID="InterestedTopicCheckBoxList1" runat="server"
                                                    RepeatDirection="Horizontal">
                                                </asp:CheckBoxList>
                                            </div>

                                            <div class="form-group-sm">
                                                <label class="control-label">Gender</label>
                                                <asp:RadioButtonList ID="GenderRadioButtonList1" RepeatDirection="Horizontal" runat="server">
                                                </asp:RadioButtonList>
                                            </div>
                                            <div class="form-group-sm">
                                                <label class="control-label">Continent</label>
                                                <asp:DropDownList ID="ContinentDropDownList1" CssClass="form-control" runat="server">
                                                </asp:DropDownList>
                                            </div>
                                            <div class="form-group-sm">
                                                <label class="control-label">Country&nbsp;&nbsp;&nbsp; </label>
                                                <asp:DropDownList ID="CountryDropDownList2" CssClass="form-control" runat="server"></asp:DropDownList>

                                            </div>
                                            <div class="form-group-sm">
                                                <label class="control-label">File Image</label>
                                                <asp:FileUpload ID="FileImageUpload2" CssClass="btn-block btn-default" runat="server" />
                                            </div>
                                            <asp:ValidationSummary ID="ValidationSummary1" ShowSummary="true" ShowValidationErrors="true" runat="server" />
                                        </div>--%>
                                    </div>
                                    <div class="modal-footer">
                                        <div class="form-group-sm ">
                                            <asp:Button ID="Button1" CssClass="btn btn-primary center-block" runat="server" OnClick="Button1_Click" Text="Save" />
                                        </div>

                                        <asp:Label ID="Label1" Visible="false" runat="server"></asp:Label>
                                        <button class="btn btn-info" data-dismiss="modal" aria-hidden="true">Close</button>

                                    </div>
                            </ContentTemplate>

                        </asp:UpdatePanel>
                    </div>

                </div>
            </div>
            <%--                        <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                            <ProgressTemplate>
                                <div id="loadingmain" class="modalgif">
                                    <div class="centergif">
                                        <img alt="" src="../Content/Images/TriangularCircleGIF.gif" />
                                    </div>
                                </div>

                            </ProgressTemplate>
                        </asp:UpdateProgress>--%>


            <!-- Modal -->
            <div class="modal fade" id="StatusModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="StatusModalLabel">Modal title</h4>
                        </div>
                        <div class="modal-body">
                            <div id="StatusMessage"></div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Processed Status Ok?</button>
                        </div>
                    </div>
                </div>
            </div>

            <%--    </ContentTemplate>

            </asp:UpdatePanel>
            --%>



            <%--            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel2">
            <ProgressTemplate>
                <div id="loadingmain" class="modalgif">
                    <div class="centergif">
                        <img alt="" src="../Content/Images/TriangularCircleGIF.gif" />
                    </div>
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>
            --%>
        </div>

    </form>
    <script type="text/javascript">
        function EditModal() {
            //alert('TEST');
            $('#TESTmyModal').modal('show');
        }
        function StatusModal(StatusMessage) {
            //$('#StatusModalGIF').hide();
            $('#StatusModal').modal('show');
            //$('#TESTmyModal').modal('hide');
            $('#StatusMessage').text(StatusMessage);
            //alert('TEST');
        }
        function LoaderGif() {
            //$('#StatusModalGIF').show();
        }
    </script>

    <%--The below style along with Update progress is working absolutely fine in normal update panel without Bootstrap modal--%> <%--https://www.aspsnippets.com/Articles/Show-Loading-Progress-Indicator-using-GIF-Image-when-UpdatePanel-is-updating-in-ASPNet.aspx--%>
    <%--The below style works with Update progress along with Bootstrap modal but in same modal itself as partial loading--%>
    <%--Leaving Progress GIF feature in Modal for ASP.NET as of now, Its better to focus with same in MVC than in the event based methodology--%>
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            font-family: Arial;
        }

        .modalgif {
            position: fixed;
            z-index: 999;
            height: 100%;
            width: 100%;
            top: 0;
            background-color: Black;
            filter: alpha(opacity=60);
            opacity: 0.6;
            -moz-opacity: 0.8;
        }

        .centergif {
            z-index: 1000;
            margin: 300px auto;
            padding: 10px;
            width: 175px;
            background-color: White;
            border-radius: 10px;
            filter: alpha(opacity=100);
            opacity: 1;
            -moz-opacity: 1;
        }

            .centergif img {
                height: 150px;
                width: 150px;
            }
    </style>

</body>
</html>
