<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportForm.aspx.cs" Inherits="WebForm.Live.ReportForm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 216px;
        }
    </style>
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../Content/JQueryUIBlock/jquery.blockUI.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">FromDate</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="TextBox1"></ajaxToolkit:CalendarExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">ToDate</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" BehaviorID="TextBox2_CalendarExtender" TargetControlID="TextBox2"></ajaxToolkit:CalendarExtender>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Show" runat="server" Text="Show" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <%--Reprocess Grid Button--%>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProfDetID" DataSourceID="ObjectDataSource1" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="ProfDetID" HeaderText="ProfDetID" SortExpression="ProfDetID" />
                        <asp:BoundField DataField="IName" HeaderText="IName" SortExpression="IName" />
                        <asp:BoundField DataField="IDesc" HeaderText="IDesc" SortExpression="IDesc" />
                        <asp:BoundField DataField="AvailableCount" HeaderText="AvailableCount" SortExpression="AvailableCount" />
                        <asp:BoundField DataField="FromDate" HeaderText="FromDate" SortExpression="FromDate" />
                        <%--<asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Action" ShowHeader="True" Text="Edit" />--%> <%--Button field can be used for Modal, Command field can be used for Inline CRUD in grid as it provides Update and cancel option in grid--%>
                        <asp:ButtonField ButtonType="Button" CommandName="editconfig" HeaderText="Action" ShowHeader="True" Text="Edit" />
                    </Columns>
                </asp:GridView>
                <%--GRID EDIT BUTTON Object Datasource--%>

                <asp:GridView ID="GridView3" DataKeyNames="ID" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2"
                    OnRowCancelingEdit="GridView3_RowCancelingEdit" OnRowDataBound="GridView3_RowDataBound"
                    OnRowEditing="GridView3_RowEditing" OnRowUpdating="GridView3_RowUpdating">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                        <asp:TemplateField HeaderText="TBOX" SortExpression="TBOX">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TBOX") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("TBOX") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DD" SortExpression="DD">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>A</asp:ListItem>
                                    <asp:ListItem>B</asp:ListItem>
                                    <asp:ListItem>C</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("DD") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CB" SortExpression="CB">
                            <EditItemTemplate>
                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>B</asp:ListItem>
                                    <asp:ListItem>A</asp:ListItem>
                                    <asp:ListItem>C</asp:ListItem>
                                </asp:CheckBoxList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("CB") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="RB" SortExpression="RB">
                            <EditItemTemplate>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>B</asp:ListItem>
                                    <asp:ListItem>A</asp:ListItem>
                                    <asp:ListItem>C</asp:ListItem>
                                </asp:RadioButtonList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("RB") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--<asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Action" ShowHeader="True" Text="Edit" />--%> <%--Button field can be used for Modal, Command field can be used for Inline CRUD in grid as it provides Update and cancel option in grid--%>
                        <asp:CommandField ButtonType="Button" HeaderText="Action" ShowEditButton="True" ShowHeader="True" />
                    </Columns>
                </asp:GridView>

                <%--GRID EDIT BUTTON Datatable Datasource--%>


                <asp:GridView ID="GridView4" runat="server">
                </asp:GridView>
                <%--GRID EDIT BUTTON SQL Datasource With Auto postback enabled for Text changed event in Textbox1 as where condition value--%>


                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnRowCancelingEdit="GridView5_RowCancelingEdit" OnRowDataBound="GridView5_RowDataBound" OnRowEditing="GridView5_RowEditing" OnRowUpdating="GridView5_RowUpdating">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:TemplateField HeaderText="TBOX" SortExpression="TBOX">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TBOX") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("TBOX") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DD" SortExpression="DD">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>A</asp:ListItem>
                                    <asp:ListItem>B</asp:ListItem>
                                    <asp:ListItem>C</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("DD") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CB" SortExpression="CB">
                            <EditItemTemplate>
                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>B</asp:ListItem>
                                    <asp:ListItem>A</asp:ListItem>
                                    <asp:ListItem>C</asp:ListItem>
                                </asp:CheckBoxList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("CB") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="RB" SortExpression="RB">
                            <EditItemTemplate>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>B</asp:ListItem>
                                    <asp:ListItem>A</asp:ListItem>
                                    <asp:ListItem>C</asp:ListItem>
                                </asp:RadioButtonList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("RB") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%--<asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Action" ShowHeader="True" Text="Edit" />--%> <%--Button field can be used for Modal, Command field can be used for Inline CRUD in grid as it provides Update and cancel option in grid--%>
                        <asp:CommandField ButtonType="Button" HeaderText="Action" ShowEditButton="True" ShowHeader="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>" SelectCommand="SELECT * FROM [GRIDSIMPLEEDIT] WHERE ([CB] LIKE '%' + @CB + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" DefaultValue="A" Name="CB" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>

        <br />
        <br />

        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetLessItemsProp" TypeName="ClassLibraryProject.EFDF.DAL"></asp:ObjectDataSource>


        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetEDITLessItemsProp" TypeName="ClassLibraryProject.EFDF.DAL"></asp:ObjectDataSource>


        <script type="text/javascript" lang="ja">
            function SuccessStatus() {
                alert("Success/Failure, This can be placed in modal as well");
            }
        </script>
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
    </form>



    <script type="text/javascript">

        //function JqueryUIblock() {
        //    alert("JqueryUIblock");
        //    $.blockUI({
        //        message: $('#domMessage'),
        //        css: {
        //            border: 'none',
        //            padding: '15px',
        //            backgroundColor: '#FFFFFF',
        //            '-webkit-border-radius': '10px',
        //            '-moz-border-radius': '10px',
        //            opacity: 1,
        //            color: '#000'
        //        }
        //        //css: { width: '4%', border: '0px solid #FFFFFF', cursor: 'wait', backgroundColor: '#FFFFFF' },
        //        //overlayCSS: { backgroundColor: '#FFFFFF', opacity: 0.0, cursor: 'wait' }
        //    });

        //}
        //function JqueryUIUnblock() {
        //    alert("JqueryUIUnblock");
        //    $.unblockUI({ fadeOut: 200 })
        //}

        //Re-Create for on page postbacks
        //var prm = Sys.WebForms.PageRequestManager.getInstance();
        //prm.add_endRequest(function () {

            function JqueryUIblock() {
                //alert("JqueryUIblock");
                $.blockUI({
                    message: $('#domMessage'),
                    css: {
                        border: 'none',
                        padding: '15px',
                        backgroundColor: 'transparent',//'#FFFFFF',
                        '-webkit-border-radius': '10px',
                        '-moz-border-radius': '10px',
                        opacity: 1,
                        color: '#000'
                    }
                    //css: { width: '4%', border: '0px solid #FFFFFF', cursor: 'wait', backgroundColor: '#FFFFFF' },
                    //overlayCSS: { backgroundColor: '#FFFFFF', opacity: 0.0, cursor: 'wait' }
                });

            }
            function JqueryUIUnblock() {
                //alert("JqueryUIUnblock");
                $.unblockUI({ fadeOut: 200 })
            }
        //});
        
    $(document).ready(
    function() {
        Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(JqueryUIblock)
        Sys.WebForms.PageRequestManager.getInstance().add_endRequest(JqueryUIUnblock)
    }
);

//function onRequestStart() {
//    $.blockUI();
//}

//function onRequestEnd() {
//    $.unblockUI();
//} 
    </script>


    <div id="domMessage" style="display: none;">
        <img src="../Content/JQueryUIBlock/Ellipsis%20Gif.gif" />
    </div>

</body>
</html>
