<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CRUDGrid.aspx.cs" Inherits="WebForm.AImplements.CRUDGrid" %>

<%@ OutputCache Duration="10" Location="ServerAndClient" VaryByParam="None" VaryByControl="GridView7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../AECommerceCMS/SB%20Admin%20Theme/ThemeContent/js/bootstrap.min.js"></script>
    <%--<link rel="stylesheet" type="text/css"
        href="//cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css" />
    <script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js">

    </script>--%>
    <link href="../Scripts/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery.dataTables.min.js"></script>
    <link href="../Scripts/dataTables.tableTools.min.css" rel="stylesheet" />
    <script src="../Scripts/dataTables.tableTools.min.js"></script>

    <%--========================================This Box is for Gridview11, even if This is removed Gridview7 will work=======================================================--%>

<%--    <script src="https://cdn.datatables.net/buttons/1.2.4/js/dataTables.buttons.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
<script src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.24/build/pdfmake.min.js"></script>
<script src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.24/build/vfs_fonts.js"></script>
<script src="//cdn.datatables.net/buttons/1.2.4/js/buttons.html5.min.js"></script>    
<link href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css" rel="stylesheet" />
 <link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" />--%>

    <%--=====================================================================================================================================================================--%>
    <script type="text/javascript">
        $(document).ready(function () {
<%--            $('#<%=GridView7.ClientID %>').dataTable({
                paging: true,
                sort: true,
                searching: true,
                scrollY: 200
            });--%>
            $('#example').dataTable();
            var table = $('#<%=GridView7.ClientID %>').dataTable();
            var tableTools = new $.fn.dataTable.TableTools(table, {
                'aButtons': [
                    {
                        'sExtends': 'xls',
                        'sButtonText': 'Save to Excel',
                        'sFileName': 'Data.xls'
                    },
                    {
                        'sExtends': 'print',
                        'bShowAll': true,
                    },
                    {
                        'sExtends': 'pdf',
                        'bFooter': false
                    },
                    'copy',
                    'csv'
                ],
                'sSwfP ath': '//cdn.datatables.net/tabletools/2.2.4/swf/copy_csv_xls_pdf.swf'
            });
            $(tableTools.fnContainer()).insertBefore('#<%=GridView7.ClientID %>_wrapper');

            //"scrollY": "300px",
            //"scrollCollapse": true,
         $('#<%=GridView11.ClientID %>').dataTable(
         {

             dom: 'Bfrtip',
             buttons: [
                 {
                     extend: 'copyHtml5',
                     text: '<i class="fa fa-files-o"></i>',
                     titleAttr: 'Copy'
                 },
                 {
                     extend: 'excelHtml5',
                     text: '<i class="fa fa-file-excel-o"></i>',
                     titleAttr: 'Excel'
                 },
                 {
                     extend: 'csvHtml5',
                     text: '<i class="fa fa-file-text-o"></i>',
                     titleAttr: 'CSV'
                 },
                 {
                     extend: 'pdfHtml5',
                     text: '<i class="fa fa-file-pdf-o"></i>',
                     titleAttr: 'PDF'
                 }
             ]
         }
         );

<%--            $('#<%=Modatest2.ClientID%>').click(function (e) {

                //$('#testmodal').click(function(){

                $('#DeleteModal').modal('show');
                e.preventDefault();
            })--%>



        });
        //HAS UPDATE PANEL
        //function PopupModal() {
        //    $('#TESTMODAL').modal('show');
        //}
        //NO UPDATEPANEL
        function PopupModal() {
            $('#TESTMODAL').modal('show');
        }
    </script>
    <button id="testmodal" type="button">TESTHTMLMODAL</button>
    <%--    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProfileDetId" DataSourceID="SqlDataSource1" 
                AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ProfileDetId" HeaderText="ProfileDetId" InsertVisible="False" ReadOnly="True" SortExpression="ProfileDetId" />
                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                    <asp:BoundField DataField="ItemDescription" HeaderText="ItemDescription" SortExpression="ItemDescription" />
                    <asp:BoundField DataField="ItemType" HeaderText="ItemType" SortExpression="ItemType" />
                    <asp:BoundField DataField="AvailableCount" HeaderText="AvailableCount" SortExpression="AvailableCount" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Continent" HeaderText="Continent" SortExpression="Continent" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="ConfirmText1" HeaderText="ConfirmText1" SortExpression="ConfirmText1" />
                    <asp:BoundField DataField="ConfirmText2" HeaderText="ConfirmText2" SortExpression="ConfirmText2" />
                    <asp:BoundField DataField="InterestedTopicMulti" HeaderText="InterestedTopicMulti" SortExpression="InterestedTopicMulti" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>" 
                SelectCommand="SELECT [ProfileDetId], [ItemName], [ItemDescription], [ItemType], [AvailableCount], [Email], [Gender], [Continent], [Country], [ConfirmText1], [ConfirmText2], [InterestedTopicMulti] FROM [ItemData]" 
                DeleteCommand="DELETE FROM [ItemData] WHERE [ProfileDetId] = @ProfileDetId" 
                InsertCommand="INSERT INTO [ItemData] ([ItemName], [ItemDescription], [ItemType], [AvailableCount], [Email], [Gender], [Continent], [Country], [ConfirmText1], [ConfirmText2], [InterestedTopicMulti]) VALUES (@ItemName, @ItemDescription, @ItemType, @AvailableCount, @Email, @Gender, @Continent, @Country, @ConfirmText1, @ConfirmText2, @InterestedTopicMulti)" 
                UpdateCommand="UPDATE [ItemData] SET [ItemName] = @ItemName, [ItemDescription] = @ItemDescription, [ItemType] = @ItemType, [AvailableCount] = @AvailableCount, [Email] = @Email, [Gender] = @Gender, [Continent] = @Continent, [Country] = @Country, [ConfirmText1] = @ConfirmText1, [ConfirmText2] = @ConfirmText2, [InterestedTopicMulti] = @InterestedTopicMulti WHERE [ProfileDetId] = @ProfileDetId">
                <DeleteParameters>
                    <asp:Parameter Name="ProfileDetId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="ItemDescription" Type="String" />
                    <asp:Parameter Name="ItemType" Type="String" />
                    <asp:Parameter Name="AvailableCount" Type="Decimal" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Continent" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="ConfirmText1" Type="String" />
                    <asp:Parameter Name="ConfirmText2" Type="String" />
                    <asp:Parameter Name="InterestedTopicMulti" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="ItemDescription" Type="String" />
                    <asp:Parameter Name="ItemType" Type="String" />
                    <asp:Parameter Name="AvailableCount" Type="Decimal" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Continent" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="ConfirmText1" Type="String" />
                    <asp:Parameter Name="ConfirmText2" Type="String" />
                    <asp:Parameter Name="InterestedTopicMulti" Type="String" />
                    <asp:Parameter Name="ProfileDetId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            varbinary type column should be avoided in the
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ProfileDetId" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ProfileDetId" HeaderText="ProfileDetId" InsertVisible="False" ReadOnly="True" SortExpression="ProfileDetId" />
                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                    <asp:BoundField DataField="ItemDescription" HeaderText="ItemDescription" SortExpression="ItemDescription" />
                    <asp:BoundField DataField="ItemType" HeaderText="ItemType" SortExpression="ItemType" />
                    <asp:BoundField DataField="AvailableCount" HeaderText="AvailableCount" SortExpression="AvailableCount" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>" SelectCommand="SELECT [ProfileDetId], [ItemName], [ItemDescription], [ItemType], [AvailableCount] FROM [ItemData]" DeleteCommand="DELETE FROM [ItemData] WHERE [ProfileDetId] = @ProfileDetId" InsertCommand="INSERT INTO [ItemData] ([ItemName], [ItemDescription], [ItemType], [AvailableCount]) VALUES (@ItemName, @ItemDescription, @ItemType, @AvailableCount)" UpdateCommand="UPDATE [ItemData] SET [ItemName] = @ItemName, [ItemDescription] = @ItemDescription, [ItemType] = @ItemType, [AvailableCount] = @AvailableCount WHERE [ProfileDetId] = @ProfileDetId">
                <DeleteParameters>
                    <asp:Parameter Name="ProfileDetId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="ItemDescription" Type="String" />
                    <asp:Parameter Name="ItemType" Type="String" />
                    <asp:Parameter Name="AvailableCount" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="ItemDescription" Type="String" />
                    <asp:Parameter Name="ItemType" Type="String" />
                    <asp:Parameter Name="AvailableCount" Type="Decimal" />
                    <asp:Parameter Name="ProfileDetId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="GID" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="GID" HeaderText="GID" InsertVisible="False" ReadOnly="True" SortExpression="GID" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>" DeleteCommand="DELETE FROM [Gender] WHERE [GID] = @GID" InsertCommand="INSERT INTO [Gender] ([Type]) VALUES (@Type)" SelectCommand="SELECT * FROM [Gender]" UpdateCommand="UPDATE [Gender] SET [Type] = @Type WHERE [GID] = @GID">
                <DeleteParameters>
                    <asp:Parameter Name="GID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Type" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Type" Type="String" />
                    <asp:Parameter Name="GID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>--%>
    <%--  <div>ObjectDatasource CRUD<br />
        <asp:GridView ID="GridView6" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" 
            DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView6_RowDeleting" DataKeyNames="ProfileDetId" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ProfileDetId" HeaderText="ProfileDetId" SortExpression="ProfileDetId" />
                <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                <asp:BoundField DataField="ItemDescription" HeaderText="ItemDescription" SortExpression="ItemDescription" />
                <asp:BoundField DataField="ItemType" HeaderText="ItemType" SortExpression="ItemType" />
                <asp:BoundField DataField="AvailableCount" HeaderText="AvailableCount" SortExpression="AvailableCount" />
                <asp:BoundField DataField="FromDate" HeaderText="FromDate" SortExpression="FromDate" />
                <asp:BoundField DataField="ToDate" HeaderText="ToDate" SortExpression="ToDate" />
                <asp:BoundField DataField="PublishDate" HeaderText="PublishDate" SortExpression="PublishDate" />
                <asp:BoundField DataField="ItemIntroDate" HeaderText="ItemIntroDate" SortExpression="ItemIntroDate" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Continent" HeaderText="Continent" SortExpression="Continent" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="ConfirmText1" HeaderText="ConfirmText1" SortExpression="ConfirmText1" />
                <asp:BoundField DataField="ConfirmText2" HeaderText="ConfirmText2" SortExpression="ConfirmText2" />
                <asp:BoundField DataField="InterestedTopicMulti" HeaderText="InterestedTopicMulti" SortExpression="InterestedTopicMulti" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="ClassLibraryProject.EFDF.ItemData" DeleteMethod="DeteteItem" InsertMethod="CreateItem" SelectMethod="GetAllItems" TypeName="ClassLibraryProject.EFDF.DAL" UpdateMethod="UpdateItem">
            <DeleteParameters>
                <asp:Parameter Name="ProfileDetId" Type="Int32" />
            </DeleteParameters>
        </asp:ObjectDataSource>
        <br />
    </div>--%>

    <div>Preexisting</div>
    <asp:GridView ID="GridView3" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px"
        CellPadding="2" ForeColor="Black" GridLines="None" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
        DataKeyNames="CustomerId" DataSourceID="SqlDataSource4">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" InsertVisible="False" ReadOnly="True" SortExpression="CustomerId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>"
        SelectCommand="SELECT * FROM [Customers]" ConflictDetection="CompareAllValues"
        DeleteCommand="DELETE FROM [Customers] WHERE [CustomerId] = @original_CustomerId AND [Name] = @original_Name AND [Country] = @original_Country"
        InsertCommand="INSERT INTO [Customers] ([Name], [Country]) VALUES (@Name, @Country)" OldValuesParameterFormatString="original_{0}"
        UpdateCommand="UPDATE [Customers] SET [Name] = @Name, [Country] = @Country WHERE [CustomerId] = @original_CustomerId AND [Name] = @original_Name AND [Country] = @original_Country">
        <DeleteParameters>
            <asp:Parameter Name="original_CustomerId" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Country" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="original_CustomerId" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Country" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CustomerId" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" InsertVisible="False" ReadOnly="True" SortExpression="CustomerId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:TemplateField HeaderText="Country" SortExpression="Country">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Country", "{0}") %>'>
                                <asp:ListItem>United States</asp:ListItem>
                                <asp:ListItem>France</asp:ListItem>
                                <asp:ListItem>England</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>China</asp:ListItem>
                                <asp:ListItem>Russia</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>


    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
        <ContentTemplate>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button5" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click1" Text="Button" />
    <br />
    From Dataset<br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>

    <br />
    Nested GRID<br />
    <br />
    <%--    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="ProfileDetId" HeaderText="ProfileDetId" />
            <asp:BoundField DataField="ItemName" HeaderText="ItemName" />
            <asp:TemplateField HeaderText="MultiInterest">
                <ItemTemplate>
                    <asp:GridView ID="GridView8" runat="server" DataSource="<%# Bind("MultiInterest") %>" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" />
                            <asp:BoundField DataField="InterestedTopic" HeaderText="InterestedTopic" />
                        </Columns>
                    </asp:GridView>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>--%>

    <br />
    Datatable test<br />
    <asp:GridView ID="GridView7" runat="server" DataSourceID="SqlDataSource5" AutoGenerateColumns="False" DataKeyNames="ProfileDetId">
        <Columns>
            <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
            <asp:BoundField DataField="ProfileDetId" HeaderText="ProfileDetId" InsertVisible="False" ReadOnly="True" SortExpression="ProfileDetId" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>" SelectCommand="SELECT [ItemName], [ProfileDetId] FROM [ItemData]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView11" runat="server" DataSourceID="SqlDataSource5" AutoGenerateColumns="False" DataKeyNames="ProfileDetId">
        <Columns>
            <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
            <asp:BoundField DataField="ProfileDetId" HeaderText="ProfileDetId" InsertVisible="False" ReadOnly="True" SortExpression="ProfileDetId" />
        </Columns>
    </asp:GridView>
    <br />
    <table id="example" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th></th>
                <th>First name</th>
                <th>Last name</th>
                <th>Position</th>
                <th>Office</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>gjcgjcjhvkhv hvkbnkbkb  j jkbbjkbjkbjbjb khbbbbbbbb</td>
                <td>gjcgjcjhvkhv hvkbnkbkb  j jkbbjkbjkbjbjb khbbbbbbbb</td>
                <td>gjcgjcjhvkhv hvkbnkbkb  j jkbbjkbjkbjbjb khbbbbbbbb</td>
                <td>gjcgjcjhvkhv hvkbnkbkb  j jkbbjkbjkbjbjb khbbbbbbbb</td>
                <td>gjcgjcjhvkhv hvkbnkbkb  j jkbbjkbjkbjbjb khbbbbbbbbkhhhhhhhhhhhhhhhhhhhhhhkh;hhhhhhh;khh;lhhhhhhhhhhhh</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <th></th>
                <th>First name</th>
                <th>Last name</th>
                <th>Position</th>
                <th>Office</th>
            </tr>
        </tfoot>
    </table>
    <br />
    Boostrap Modal with Button field for custom CRUD<br />
    <%--GridUpdatePanel--%>
    <%--    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>--%>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource5" ShowFooter="True"
        AutoGenerateColumns="False" DataKeyNames="ProfileDetId" OnRowCommand="GridView2_RowCommand">
        <Columns>
            <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
            <asp:BoundField DataField="ProfileDetId" HeaderText="ProfileDetId" InsertVisible="False" ReadOnly="True" SortExpression="ProfileDetId" />
            <asp:ButtonField CommandName="EditData" ButtonType="Button" ControlStyle-CssClass="btn btn-info" HeaderText="Edit" Text="Edit">
                <ControlStyle CssClass="btn btn-info" />
            </asp:ButtonField>
            <asp:ButtonField CommandName="DetailsData" ButtonType="Button" ControlStyle-CssClass="btn btn-info" HeaderText="Details" Text="Details">
                <ControlStyle CssClass="btn btn-info" />
            </asp:ButtonField>
        </Columns>
    </asp:GridView>
    <asp:Button runat="server" UseSubmitBehavior="true" Text="ModaltestPANEL" ID="Modaltest" OnClick="Modaltest_Click" />
    <%--        </ContentTemplate>
    </asp:UpdatePanel>--%>

    <asp:Button runat="server" UseSubmitBehavior="false" Text="ModaltestOUTSIDE" ID="Modatest2" OnClick="Modaltest_Click" />
    <%--Edit Modal--%>
    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
        <ContentTemplate>
            <div class="modal fade" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Edit Modal</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label class="control-label">ProfileDetId</label>
                                <asp:TextBox ID="ProfileDetIdEdit" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="control-label">IName</label>
                                <asp:TextBox ID="INameEdit" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
                </di>
            <!-- /.modal -->
        </ContentTemplate>
    </asp:UpdatePanel>
    <%--Details Modal--%>
    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
        <ContentTemplate>
            <div class="modal fade" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Details Modal</h4>
                        </div>
                        <div class="modal-body">
                            <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered table-hover" Height="50px" Width="125px">
                            </asp:DetailsView>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
        </ContentTemplate>
    </asp:UpdatePanel>
    <%--Delete Modal--%>
    <div id="DeleteModal" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Delete Modal</h4>
                </div>
                <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                    <ContentTemplate>
                        <div class="modal-body">
                            Are you sure you want to delete the record?
                           
                            <%--<asp:HiddenField ID="hfCode" runat="server" />--%>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                            <button type="button" class="btn btn-primary">Delete</button>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
    <%--Create Modal--%>
    <asp:UpdatePanel ID="UpdatePanel7" runat="server">
        <ContentTemplate>
            <div class="modal fade" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                            Craete Form
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
        </ContentTemplate>
    </asp:UpdatePanel>

    <%--TEST Modal--%>
    <div id="TESTMODAL" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Delete Modal</h4>
                </div>
                <div class="modal-body">
                    Are you sure you want to delete the record?
                                          
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary">Delete</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
</asp:Content>

