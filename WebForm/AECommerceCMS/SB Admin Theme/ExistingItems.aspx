<%@ Page Title="" Language="C#" MasterPageFile="~/AECommerceCMS/SB Admin Theme/SBAdmin.Master" AutoEventWireup="true" CodeBehind="ExistingItems.aspx.cs" Inherits="WebForm.AECommerceCMS.SB_Admin_Theme.ExistingItems" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">

        <form id="form1" class="form-horizontal" runat="server">
            <div class="col-lg-offset-3 col-lg-6 col-l">
                <asp:ScriptManager runat="server"></asp:ScriptManager>
                <%--Must to run any script or Ajax control kit working in page..
                         ScriptManagerProxy can be used on Page wise working.
                         ScriptManager can be for common for all pages by placing on Master page--%>

                <label class="text-center h3 ">Existing Item Details</label>
                <hr />

                <label class="control-label ">Date Range</label>

                <div class="form-group">

                    <div class="col-lg-6">
                        <div class="input-group">
                            <asp:TextBox ID="StartDate" CssClass="form-control" runat="server" placeholder="Start Date"></asp:TextBox>
                            <span class="input-group-addon">
                                <button id="SDB" class="glyphicon glyphicon-calendar"></button>
                            </span>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" BehaviorID="TextBox12_CalendarExtender"
                                TargetControlID="StartDate" Format="yyyy-MM-dd" PopupButtonID="SDB" PopupPosition="BottomRight"></ajaxToolkit:CalendarExtender>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="input-group">
                            <asp:TextBox ID="EndDate" CssClass="form-control" runat="server" placeholder="End Date"></asp:TextBox>
                            <span class="input-group-addon">
                                <button id="EDB" class="glyphicon glyphicon-calendar"></button>
                            </span>
                            <ajaxToolkit:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" BehaviorID="TextBox2_CalendarExtender"
                                TargetControlID="EndDate" Format="yyyy-MM-dd" PopupButtonID="EDB" PopupPosition="BottomRight"></ajaxToolkit:CalendarExtender>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Button ID="Button1" CssClass="btn btn-default center-block" OnClick="Button1_Click" runat="server" Text="Fetch" />
                </div>
                <hr />
            </div>
            <div class="col-lg-12">
                <%--To get Dropdown and other controls apart from textbox on Gridview edit, need to convert that column to Template field 
            then we need to edit template and Datasource for that control--%>
                <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <label class="control-label">Object Data Source</label>
                        <asp:GridView ID="GridView4" runat="server" DataSourceID="ObjectDataSource1"
                            CssClass="table table-bordered table-condensed table-hover table-responsive"
                            AllowPaging="True" DataKeyNames="ProfileDetId"
                            PageSize="3" ShowFooter="True" AutoGenerateColumns="False" AllowSorting="True"
                            OnRowDeleted="GridView4_RowDeleted" OnRowDeleting="GridView4_RowDeleting" OnRowEditing="GridView4_RowEditing"
                            OnRowUpdated="GridView4_RowUpdated" OnRowUpdating="GridView4_RowUpdating">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
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
                            <EmptyDataTemplate>
                                There are no records for the condition
                            </EmptyDataTemplate>
                        </asp:GridView>
                        <%--                        CssClass="table table-bordered table-condensed table-hover table-responsive" 
                            AllowPaging="True"
                             PageSize="3" ShowFooter="True" AutoGenerateColumns="False" DataKeyNames="ProfileDetId" AllowSorting="True"  
                            OnRowDeleted="GridView4_RowDeleted" OnRowDeleting="GridView4_RowDeleting" OnRowEditing="GridView4_RowEditing" 
                            OnRowUpdated="GridView4_RowUpdated" OnRowUpdating="GridView4_RowUpdating">
                                <asp:CommandField ShowDeleteButton="True" EditText="MakeChange" ShowEditButton="True" DeleteText="RemoveItem"/>--%>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllItemsbyFromDate" TypeName="ClassLibraryProject.EFDF.DAL"
                            DataObjectTypeName="ClassLibraryProject.EFDF.ItemData" DeleteMethod="DeteteItem" InsertMethod="CreateItem" UpdateMethod="UpdateItem"
                            OnDeleted="ObjectDataSource1_Deleted" OnDeleting="ObjectDataSource1_Deleting" OnUpdated="ObjectDataSource1_Updated"
                            SortParameterName="sortColumn">
                            <DeleteParameters>
                                <asp:Parameter Name="ProfileDetId" Type="Int32" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="StartDate" Name="fd1" PropertyName="Text" Type="DateTime" />
                                <asp:ControlParameter ControlID="EndDate" Name="fd2" PropertyName="Text" Type="DateTime" />
                                <asp:Parameter Name="sortColumn" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>

                        <br />
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
                            DataKeyNames="ProfileDetId" DataSourceID="SqlDataSource5" Height="50px" Width="125px">
                            <Fields>
                                <asp:BoundField DataField="ProfileDetId" HeaderText="ProfileDetId" InsertVisible="False" ReadOnly="True" SortExpression="ProfileDetId" />
                                <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                                <asp:BoundField DataField="ConfirmText2" HeaderText="ConfirmText2" SortExpression="ConfirmText2" />
                                <asp:BoundField DataField="ConfirmText1" HeaderText="ConfirmText1" SortExpression="ConfirmText1" />
                                <asp:BoundField DataField="InterestedTopicMulti" HeaderText="InterestedTopicMulti" SortExpression="InterestedTopicMulti" />
                                <asp:BoundField DataField="FromDate" HeaderText="FromDate" SortExpression="FromDate" />
                                <asp:BoundField DataField="AvailableCount" HeaderText="AvailableCount" SortExpression="AvailableCount" />
                                <asp:BoundField DataField="ItemType" HeaderText="ItemType" SortExpression="ItemType" />
                                <asp:BoundField DataField="ItemDescription" HeaderText="ItemDescription" SortExpression="ItemDescription" />
                                <asp:BoundField DataField="ItemIntroDate" HeaderText="ItemIntroDate" SortExpression="ItemIntroDate" />
                                <asp:BoundField DataField="ToDate" HeaderText="ToDate" SortExpression="ToDate" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                                <asp:BoundField DataField="Continent" HeaderText="Continent" SortExpression="Continent" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                            </Fields>
                        </asp:DetailsView>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>" DeleteCommand="DELETE FROM [ItemData] WHERE [ProfileDetId] = @ProfileDetId" InsertCommand="INSERT INTO [ItemData] ([ItemName], [ConfirmText2], [ConfirmText1], [InterestedTopicMulti], [FromDate], [AvailableCount], [ItemType], [ItemDescription], [ItemIntroDate], [ToDate], [Gender], [Country], [Continent]) VALUES (@ItemName, @ConfirmText2, @ConfirmText1, @InterestedTopicMulti, @FromDate, @AvailableCount, @ItemType, @ItemDescription, @ItemIntroDate, @ToDate, @Gender, @Country, @Continent)" SelectCommand="SELECT [ProfileDetId], [ItemName], [ConfirmText2], [ConfirmText1], [InterestedTopicMulti], [FromDate], [AvailableCount], [ItemType], [ItemDescription], [ItemIntroDate], [ToDate], [Gender], [Country], [Continent] FROM [ItemData] WHERE ([ProfileDetId] = @ProfileDetId)" UpdateCommand="UPDATE [ItemData] SET [ItemName] = @ItemName, [ConfirmText2] = @ConfirmText2, [ConfirmText1] = @ConfirmText1, [InterestedTopicMulti] = @InterestedTopicMulti, [FromDate] = @FromDate, [AvailableCount] = @AvailableCount, [ItemType] = @ItemType, [ItemDescription] = @ItemDescription, [ItemIntroDate] = @ItemIntroDate, [ToDate] = @ToDate, [Gender] = @Gender, [Country] = @Country, [Continent] = @Continent WHERE [ProfileDetId] = @ProfileDetId">
                            <DeleteParameters>
                                <asp:Parameter Name="ProfileDetId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ItemName" Type="String" />
                                <asp:Parameter Name="ConfirmText2" Type="String" />
                                <asp:Parameter Name="ConfirmText1" Type="String" />
                                <asp:Parameter Name="InterestedTopicMulti" Type="String" />
                                <asp:Parameter Name="FromDate" Type="DateTime" />
                                <asp:Parameter Name="AvailableCount" Type="Decimal" />
                                <asp:Parameter Name="ItemType" Type="String" />
                                <asp:Parameter Name="ItemDescription" Type="String" />
                                <asp:Parameter Name="ItemIntroDate" Type="DateTime" />
                                <asp:Parameter Name="ToDate" Type="DateTime" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="Country" Type="String" />
                                <asp:Parameter Name="Continent" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView4" Name="ProfileDetId" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ItemName" Type="String" />
                                <asp:Parameter Name="ConfirmText2" Type="String" />
                                <asp:Parameter Name="ConfirmText1" Type="String" />
                                <asp:Parameter Name="InterestedTopicMulti" Type="String" />
                                <asp:Parameter Name="FromDate" Type="DateTime" />
                                <asp:Parameter Name="AvailableCount" Type="Decimal" />
                                <asp:Parameter Name="ItemType" Type="String" />
                                <asp:Parameter Name="ItemDescription" Type="String" />
                                <asp:Parameter Name="ItemIntroDate" Type="DateTime" />
                                <asp:Parameter Name="ToDate" Type="DateTime" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="Country" Type="String" />
                                <asp:Parameter Name="Continent" Type="String" />
                                <asp:Parameter Name="ProfileDetId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />

                        Cascade delete should be enabled for child table for delte to work in Grid view<br />
                        <br />

                        <%--                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>--%>
                        <%--                <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>--%>
                        <label class="control-label">SQL Data Source</label>
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="ProfileDetId"
                            CssClass="table table-bordered table-condensed table-hover table-responsive" DataSourceID="SqlDataSource3"
                            AllowPaging="True" AllowSorting="True" PageSize="3" ShowFooter="True" OnRowDeleted="GridView5_RowDeleted"
                            OnRowUpdated="GridView5_RowUpdated" OnRowDeleting="GridView5_RowDeleting">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

                                <asp:TemplateField HeaderText="ProfileDetId" InsertVisible="False" SortExpression="ProfileDetId">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProfileDetId") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("ProfileDetId") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:Button Text="Insert" ID="InsertB" runat="server" OnClick="InsertB_Click"></asp:Button>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ItemName" SortExpression="ItemName">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="ItemName" runat="server" Text='<%# Bind("ItemName") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ControlToValidate="ItemName" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ItemName") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox runat="server" ID="InsertINAME"></asp:TextBox>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ItemDescription" SortExpression="ItemDescription">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ItemDescription") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("ItemDescription") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox runat="server" ID="InsertIDESC"></asp:TextBox>

                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="AvailableCount" SortExpression="AvailableCount">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="AvailableCount" TextMode="Number" runat="server" Text='<%# Bind("AvailableCount") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("AvailableCount") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <asp:TextBox runat="server" ID="InsertIAvailableCount" TextMode="Number"></asp:TextBox>

                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="ItemType" InsertVisible="False" SortExpression="ItemType">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList1" runat="server"
                                            DataSourceID="SqlDataSource4" DataTextField="GID" DataValueField="GID" SelectedValue='<%# Bind("ItemType") %>' />

                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ItemType") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                    </FooterTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="FromDate" SortExpression="FromDate">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("FromDate") %>'></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="TextBox5_CalendarExtender" runat="server"
                                            BehaviorID="TextBox5_CalendarExtender" TargetControlID="TextBox5" />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("FromDate") %>'></asp:Label>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                    </FooterTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="ToDate" HeaderText="ToDate" SortExpression="ToDate" />
                                <asp:BoundField DataField="PublishDate" HeaderText="PublishDate" SortExpression="PublishDate" />
                                <asp:BoundField DataField="ItemIntroDate" HeaderText="ItemIntroDate" SortExpression="ItemIntroDate" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                <asp:BoundField DataField="Continent" HeaderText="Continent" SortExpression="Continent" />
                                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                                <asp:BoundField DataField="ConfirmText2" HeaderText="ConfirmText2" SortExpression="ConfirmText2" />
                                <asp:BoundField DataField="ConfirmText1" HeaderText="ConfirmText1" SortExpression="ConfirmText1" />
                                <asp:BoundField DataField="InterestedTopicMulti" HeaderText="InterestedTopicMulti" SortExpression="InterestedTopicMulti" />

                            </Columns>
                            <EmptyDataTemplate>
                                There are no records for the condition
                            </EmptyDataTemplate>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>"
                            SelectCommand="SELECT [ProfileDetId], [ItemName], [ItemDescription], [AvailableCount], [ItemType], [FromDate], [ToDate], [PublishDate], [ItemIntroDate], [Email], [Gender], [Continent], [Country], [ConfirmText2], [ConfirmText1], [InterestedTopicMulti] FROM [ItemData] WHERE (([FromDate] &gt;= @FromDate) AND ([FromDate] &lt;= @FromDate2))"
                            UpdateCommand="UPDATE [ItemData] SET [ItemName] = @ItemName, [ItemDescription] = @ItemDescription, 
                            [AvailableCount] = @AvailableCount, [ItemType] = @ItemType, [FromDate] = @FromDate, [ToDate] = @ToDate, 
                            [PublishDate] = @PublishDate, [ItemIntroDate] = @ItemIntroDate, [Email] = @Email, [Gender] = @Gender,
                             [Continent] = @Continent, [Country] = @Country, [ConfirmText2] = @ConfirmText2, [ConfirmText1] = @ConfirmText1,
                             [InterestedTopicMulti] = @InterestedTopicMulti WHERE [ProfileDetId] = @original_ProfileDetId"
                            DeleteCommand="DELETE FROM [ItemData] WHERE [ProfileDetId] = @original_ProfileDetId"
                            InsertCommand="INSERT INTO [ItemData] ([ItemName], [ItemDescription], [AvailableCount], [ItemType], [FromDate], [ToDate], [PublishDate], [ItemIntroDate], [Email], [Gender], [Continent], [Country], [ConfirmText2], [ConfirmText1], [InterestedTopicMulti]) VALUES (@ItemName, @ItemDescription, @AvailableCount, @ItemType, @FromDate, @ToDate, @PublishDate, @ItemIntroDate, @Email, @Gender, @Continent, @Country, @ConfirmText2, @ConfirmText1, @InterestedTopicMulti)" OldValuesParameterFormatString="original_{0}">
                            <DeleteParameters>
                                <asp:Parameter Name="original_ProfileDetId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ItemName" Type="String" />
                                <asp:Parameter Name="ItemDescription" Type="String" />
                                <asp:Parameter Name="AvailableCount" Type="Decimal" />
                                <asp:Parameter Name="ItemType" Type="String" />
                                <asp:Parameter Name="FromDate" Type="DateTime" />
                                <asp:Parameter Name="ToDate" Type="DateTime" />
                                <asp:Parameter Name="PublishDate" Type="DateTime" />
                                <asp:Parameter Name="ItemIntroDate" Type="DateTime" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="Continent" Type="String" />
                                <asp:Parameter Name="Country" Type="String" />
                                <asp:Parameter Name="ConfirmText2" Type="String" />
                                <asp:Parameter Name="ConfirmText1" Type="String" />
                                <asp:Parameter Name="InterestedTopicMulti" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="StartDate" Name="FromDate" PropertyName="Text" Type="DateTime" />
                                <asp:ControlParameter ControlID="EndDate" Name="FromDate2" PropertyName="Text" Type="DateTime" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ItemName" Type="String" />
                                <asp:Parameter Name="ItemDescription" Type="String" />
                                <asp:Parameter Name="AvailableCount" Type="Decimal" />
                                <asp:Parameter Name="ItemType" Type="String" />
                                <asp:Parameter Name="FromDate" Type="DateTime" />
                                <asp:Parameter Name="ToDate" Type="DateTime" />
                                <asp:Parameter Name="PublishDate" Type="DateTime" />
                                <asp:Parameter Name="ItemIntroDate" Type="DateTime" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="Continent" Type="String" />
                                <asp:Parameter Name="Country" Type="String" />
                                <asp:Parameter Name="ConfirmText2" Type="String" />
                                <asp:Parameter Name="ConfirmText1" Type="String" />
                                <asp:Parameter Name="InterestedTopicMulti" Type="String" />
                                <asp:Parameter Name="original_ProfileDetId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server"
                            ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>"
                            SelectCommand="SELECT * FROM [Gender]"></asp:SqlDataSource>
                        <asp:Label ID="UpdateStatus" runat="server" Text="Label"></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>

                <%--                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>

                        <asp:GridView ID="GridView1" runat="server"
                            CssClass="table table-bordered table-condensed table-hover table-responsive"
                            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="CustomerId">
                            <Columns>
                                <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" InsertVisible="False" ReadOnly="True" SortExpression="CustomerId" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>--%>

                <%--                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional" Visible="false">
                    <ContentTemplate>
                        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC"
                            CssClass="table table-bordered table-condensed table-hover table-responsive"
                            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="EntityDataSource1">
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
                        <asp:EntityDataSource ID="EntityDataSource1" runat="server">
                        </asp:EntityDataSource>

                        <asp:GridView ID="GridView3" runat="server">
                        </asp:GridView>

                        <asp:Label ID="Updatepnllabelid" runat="server"></asp:Label>
                    </ContentTemplate>
                    <Triggers></Triggers>
                </asp:UpdatePanel>--%>
            </div>
        </form>
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource2">
                <ItemTemplate>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail">
                            <%--<asp:Image ID="Image1" ImageUrl="../../<%# DataBinder.Eval(Container.DataItem,"ItemDescription") %>" alt="Alternate Text Test" runat="server" />--%>
                            <%--<asp:Image ID="Image2" ImageUrl= "data:image/jpg;base64,<% Convert.ToBase64String((byte[])Eval("ItemImage")); %>"  alt="Alternate Text Test" runat="server" />--%>
                            <img src="../../<%# DataBinder.Eval(Container.DataItem,"ItemDescription") %>" alt="Alternate Text Test">
                            <%--                            <img src="<%# DataBinder.Eval(Container.DataItem,"ImgByte") %>" alt="Alternate Text Test">--%>
                            <div class="caption">
                                <h4><%# DataBinder.Eval(Container.DataItem,"ItemName") %></h4>
                                <p><%# DataBinder.Eval(Container.DataItem,"ItemDescription") %></p>
                                <%--<p><a href="#" class="btn btn-p'ljrimary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>--%>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetAllItems" TypeName="ClassLibraryProject.EFDF.DAL"></asp:ObjectDataSource>
    </div>
    <img src="../../AImages/482635660.jpg" />
</asp:Content>
