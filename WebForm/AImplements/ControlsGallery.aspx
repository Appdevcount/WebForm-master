<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ControlsGallery.aspx.cs" Inherits="WebForm.AImplements.ControlsGallery" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ OutputCache Duration="2" Location="ServerAndClient" VaryByParam="None" %>
<%--<%@ OutputCache Duration="1" VaryByParam="DropDownList1" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <strong>Standard</strong>
    <hr />
    <p>Adrotator</p>
    <asp:AdRotator ID="AdRotator1" runat="server" Enabled="true" BackColor="Wheat" />
    <p>Bulleted List</p>
    <asp:BulletedList ID="BulletedList1" runat="server" Target="_blank" BackColor="#CCFF66" BorderColor="Black" BorderWidth="1px" CssClass="form-control">
        <asp:ListItem>B</asp:ListItem>
        <asp:ListItem>A</asp:ListItem>
    </asp:BulletedList>



    <br />
    Button<br />
    There is also Oncommand event , and CommandName,Command argument properties. we can use these properties for the Buttons with same oncommand event wiredup for them . These properties can be used to distinguish them
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Height="40px" OnCommand="Button1_Command" CommandName="somename" CommandArgument="some argument"
        OnClientClick="alert('alert javascript?')" OnClick="Button1_Click" Text="Button" ToolTip="Click to submit the data [Tooltip]" Width="200px" />
    <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" Height="40px"
        OnClientClick="return confirm('Confirm javascript?')" OnClick="Button1_Click" Text="Button" ToolTip="Click to submit the data [Tooltip]" Width="200px" />
    <br />
    Calender<br />
    <asp:Calendar ID="Calendar1" runat="server" BorderStyle="Solid" BorderWidth="2px" CssClass="form-control" FirstDayOfWeek="Monday"
        ForeColor="#3333CC" OnSelectionChanged="Calendar1_SelectionChanged" Caption="Calender some caption" CaptionAlign="Top"></asp:Calendar>
    <br />
    CheckBox<br />
    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="CheckBoxText" />
    <br />
    CheckBoxList<br />
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="form-control" RepeatDirection="Horizontal" TextAlign="Left" RepeatColumns="2">
        <asp:ListItem Selected="True">A</asp:ListItem>
        <asp:ListItem Enabled="false">B</asp:ListItem>
        <asp:ListItem>C</asp:ListItem>
        <asp:ListItem>D</asp:ListItem>
    </asp:CheckBoxList>
    <br />
    DropdownList<br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Country" DataValueField="CustomerId" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem Enabled="true" Selected="True" Text="A" Value="A"></asp:ListItem>
        <asp:ListItem Enabled="false" Selected="false" Text="B" Value="B"></asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
    FileUpload<br />
    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" ToolTip="Upload only .doc files" />
    Hidden Field<br />
    <asp:HiddenField ID="HiddenField1" runat="server" ClientIDMode="Static" Value="Hiddensomevalue sample" />
    Label<br />
    <asp:Label ID="Label1" runat="server" CssClass="<%$ AppSettings:CrystalImageCleaner-Age %>" Text="<%$ AppSettings:SampleKey %>"></asp:Label>
    <br />
    <br />
    HyperLink<br />
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" NavigateUrl="https://google.com" Target="_blank" ImageUrl="SomeImageurl.png">HyperLink Textsample Google</asp:HyperLink>
    <br />
    Image<br />
    <asp:Image ID="Image1" runat="server" BorderColor="#FF0066" BorderStyle="Solid" BorderWidth="3px" Height="40px" ImageUrl="~/AECommerceCMS/Content/Images/OG.jpg" Width="200px" />
    <br />
    ImageButton<br />
    <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="AlternateTextSample" Height="50px" ImageAlign="Right" Width="50px" />
    <br />
    Image Mapp<br />
    <asp:ImageMap ID="ImageMap1" runat="server">
    </asp:ImageMap>
    <br />
    LinkButton<br />
    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
    <br />
    ListBox<br />
    <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
        <asp:ListItem>A</asp:ListItem>
        <asp:ListItem>B</asp:ListItem>
    </asp:ListBox>
    <br />
    Literal - The text property can render as HTML elements as well when written<br />
    <asp:Literal ID="Literal1" runat="server" Text="<%$ AppSettings:SampleKey %>"></asp:Literal>
    <br />
    Localize<br />
    <%--<asp:Localize ID="Localize1" runat="server"></asp:Localize>--%>
    <br />
    MultiView[Manual settin of Nav/next button and and setting active index of view] The control data from one view can be access from one view to another view<br />
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" OnActiveViewChanged="MultiView1_ActiveViewChanged" Visible="False">
        <asp:View runat="server">
            View1
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
        </asp:View>
        <asp:View runat="server">
            View2
            <asp:Button ID="Button5" runat="server" Text="Button" />
        </asp:View>
        <asp:View runat="server">
            View3
            <asp:Button ID="Button6" runat="server" Text="Button" />
        </asp:View>
    </asp:MultiView>
    <br />
    Panel [Can have collective control over the elements within the panel]<br />
    <asp:Panel ID="Panel1" runat="server" ToolTip="PANELTOOLTIP">
        <asp:Button ID="Button7" runat="server" Text="Button" />
        <asp:CheckBox ID="CheckBox2" runat="server" />
        <asp:FileUpload ID="FileUpload2" runat="server" />
    </asp:Panel>
    PlaceHolder<br />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    <br />
    RadioButton<br />
    <asp:RadioButton ID="RadioButton1" runat="server" CssClass="form-control" EnableViewState="False" Text="RadioButtonSample" />
    RadioButtonList<br />
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="form-contro" RepeatDirection="Horizontal">
        <asp:ListItem>A</asp:ListItem>
        <asp:ListItem>B</asp:ListItem>
    </asp:RadioButtonList>
    Substitution<br />
    <asp:Substitution ID="Substitution1" runat="server" />
    <br />
    <br />



    Table<br />
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">cell1</asp:TableCell>
            <asp:TableCell runat="server">cell2</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
        </asp:TableRow>
    </asp:Table>
    Textbox<br />
    <script type="text/javascript">
       <%-- $(function () {
            $('#<%= TextBox1.ClientID %>').autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: "StudentService.asmx/GetStudentNames",
                        data: "{ 'searchTerm': '" + request.term + "' }",
                        type: "POST",
                        dataType: "json",
                        contentType: "application/json;charset=utf-8",
                        success: function (data) {
                            response(data.d);
                        },
                        error: function (result) {
                            alert('There is a problem processing your request');
                        }
                    });
                },
                minLength: 0
            });
        });--%>
    </script>
    <fieldset>
        <legend>Textboxes</legend>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="MultiLine">sampletext</asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="DateTime">sampletext</asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="Password">sampletext</asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Phone">sampletext</asp:TextBox>
    </fieldset>
    View[This can be dragged and dropped in Multiview]<br />
    <br />
    Wizard[Here navigation button comes by default for each wizard step unlike Multiview Views] Can change headertext for each wizard based on the active index ...
    Also to bring the auto generated navigation controls in aspx source - select converto navigation template option in design mode....
    By default only wizard step elements will be there in wizard control aspx source<br />
    <asp:Wizard ID="Wizard1" runat="server" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" OnCancelButtonClick="Wizard1_CancelButtonClick" OnFinishButtonClick="Wizard1_FinishButtonClick" HorizontalAlign="NotSet" OnNextButtonClick="Wizard1_NextButtonClick" ActiveStepIndex="1">
        <FinishNavigationTemplate>
            <asp:Button ID="FinishPreviousButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Previous" />
            <asp:Button ID="FinishButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveComplete" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Finish" />
        </FinishNavigationTemplate>
        <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
        <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
        <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
        <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
        <SideBarTemplate>
            <asp:DataList ID="SideBarList" runat="server">
                <ItemTemplate>
                    <asp:LinkButton ID="SideBarButton" runat="server" BorderWidth="0px" Font-Names="Verdana" ForeColor="White"></asp:LinkButton>
                </ItemTemplate>
                <SelectedItemStyle Font-Bold="True" />
            </asp:DataList>
        </SideBarTemplate>
        <StartNavigationTemplate>
            <asp:Button ID="StartNextButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Next" />
        </StartNavigationTemplate>
        <StepNavigationTemplate>
            <asp:Button ID="StepPreviousButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Previous" />
            <asp:Button ID="StepNextButton" runat="server" BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Text="Next" />
        </StepNavigationTemplate>
        <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
        <WizardSteps>
            <asp:WizardStep runat="server" Title="Step 1">
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step 2">
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step3">
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
    XML<br />
    <asp:Xml ID="Xml1" runat="server"></asp:Xml>
    <br />
    <br />
    <hr />
    <strong>Data</strong>
    <hr />



    <br />
    Chart<br />
    <%--<asp:Chart ID="Chart1" runat="server">
        <Series>
            <asp:Series Name="Series1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>--%>



    <br />



    <br />
    DataList<br />
    <asp:DataList ID="DataList1" runat="server">
    </asp:DataList>
    <br />
    DataPager<br />
    <%--   <asp:DataPager ID="DataPager1" runat="server">
        <Fields>
            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
        </Fields>
    </asp:DataPager>--%>
    <br />
    Details View<br />
    <asp:DetailsView ID="DetailsView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Height="50px" Width="125px">
        <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    </asp:DetailsView>
    <br />
    EntityDataSource<br />
    <asp:EntityDataSource ID="EntityDataSource1" runat="server">
    </asp:EntityDataSource>
    <br />
    FormView<br />
    <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>
    <br />
    GridView[SQL]<br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
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
    <br />
    GridView[Entity]<br />
    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>
    <br />
    <br />
    GridView[Template and Bound field Column]<br />
    <asp:GridView ID="GridView3" runat="server">
        <Columns>
            <asp:BoundField />
            <asp:BoundField DataField="bField" HeaderText="BoundfieldColumn" />
            <asp:TemplateField HeaderText="Tfield">
                <ItemTemplate>
                    <%--      <asp:TextBox ID="TextBox7" runat="server" Text="<%# Eval('sfas') %>"></asp:TextBox>--%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ImageField>
            </asp:ImageField>
            <asp:CheckBoxField />
            <asp:HyperLinkField />
            <asp:ButtonField Text="Button" />
            <asp:CommandField />
        </Columns>
    </asp:GridView>
    <br />


    LinqDataSource<br />
    <asp:LinqDataSource ID="LinqDataSource1" runat="server">
    </asp:LinqDataSource>
    <br />
    ListView<br />
    <%--    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
    </asp:ListView>--%>
    <br />
    ObjectDataSource<br />
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
    <br />
    QueryExtender<br />
    <%--<asp:QueryExtender ID="QueryExtender1" runat="server">
    </asp:QueryExtender>--%>
    <br />
    Binding Properties with some values like this&nbsp; - <a href="http://stackoverflow.com/questions/7934160/asp-net-syntax">http://stackoverflow.com/questions/7934160/asp-net-syntax</a><br />
    <br />
    Repeater<br />
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    </asp:Repeater>
    <br />
    SiteMapDataSource<br />
    <%--<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />--%>
    <br />
    SqlDataSource<br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    <br />
    XmlDataSource<br />
    <%--<asp:XmlDataSource ID="XmlDataSource1" runat="server"></asp:XmlDataSource>--%>
    <br />
    <br />
    <hr />
    <strong>Validation</strong>
    <hr />



    <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" ValidationGroup="ValidateThisgroup1"></asp:TextBox>
    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Button" />
    <br />
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox2" ControlToCompare="TextBox1" ValueToCompare=""
        Text="*"
        ErrorMessage="CompareValidator Error Message" Operator="GreaterThan" ValidationGroup="VG1"></asp:CompareValidator>
    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="CustomValidator Error Message" ValidationGroup="VG1"></asp:CustomValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator Error Message"
        Type="Integer" Display="Dynamic" MaximumValue="4" MinimumValue="1" ValidationGroup="VG1"></asp:RangeValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
        ValidationExpression="" runat="server" ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br />
    Validators and Validation summary and Button control can be grouped in a  single validation group to avoid having effect on other forms out of grop during validation
    <asp:ValidationSummary ID="ValidationSummary1" HeaderText="" runat="server" ValidationGroup="VG1" />
    <br />
    <hr />
    <strong>Navigation</strong>
    <hr />




    <br />
    <br />
    Menu<br />
    <asp:Menu ID="Menu1" runat="server" StaticDisplayLevels="2" Orientation="Vertical" DisappearAfter="2000">
        <Items>
            <asp:MenuItem Text="New Item" Value="New Item" NavigateUrl="~/About.aspx" ToolTip="" Target="_Blank"></asp:MenuItem>
            <asp:MenuItem Text="New Item" Value="New Item"></asp:MenuItem>
            <asp:MenuItem Text="New Item" Value="New Item"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/Admin.aspx" Text="Admin" Value="Admin">
                <asp:MenuItem NavigateUrl="~/AddUser.aspx" Text="Add User" Value="Add User"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/EditUser.aspx" Text="Edit User" Value="Edit User"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/ViewUser.aspx" Text="View User" Value="View User"></asp:MenuItem>
            </asp:MenuItem>
        </Items>
        <LevelMenuItemStyles>
            <asp:MenuItemStyle CssClass="MenuLevel1" />
            <asp:MenuItemStyle CssClass="MenuLevel2" />
        </LevelMenuItemStyles>
        <LevelSelectedStyles>
            <asp:MenuItemStyle ForeColor="Yellow" />
            <asp:MenuItemStyle ForeColor="Maroon" />
        </LevelSelectedStyles>
        <%--<StaticSelectedStyle ForeColor="Green" />
    <DynamicSelectedStyle ForeColor="Green" />--%>
    </asp:Menu>
            <%--  OnPreRender="Menu1_PreRender"--%>
        
<%--    <asp:Menu ID="Menu2" runat="server" DataSourceID="XmlDataSource1">
        
    <DataBindings>
        <asp:MenuItemBinding DataMember="MenuItem" 
            NavigateUrlField="NavigateUrl" TextField="Text" />
    </DataBindings>
</asp:Menu>--%>
<%--    <asp:XmlDataSource ID="XmlDataSource2" runat="server" 
    XPath="/Items/MenuItem" DataFile="~/MenuData.xml">--%>

    <br />
    SiteMapPath<br />
    <%--  <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
        <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
        <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
    </asp:SiteMapPath>--%>

<%--    <asp:SiteMapDataSource ShowStartingNode="false" ID="SiteMapDataSource1" runat="server" /> 
    <asp:Menu ID="Menu3" DataSourceID="SiteMapDataSource1" runat="server">
</asp:Menu>--%>
    <br />
    <br />
    Tree View<br />TreeView control can be bound to 
1. XML file
2. web.sitemap file
3. Database table
    <asp:TreeView ID="TreeView1" runat="server">
        <Nodes>
   <asp:TreeNode Text="Home" NavigateUrl="~/Home.aspx" Target="_blank" />
        <asp:TreeNode Text="Employee" NavigateUrl="~/Employee.aspx" Target="_blank">
            <asp:TreeNode Text="Upload Resume" NavigateUrl="~/UploadResume.aspx" Target="_blank"/>
            <asp:TreeNode Text="Edit Resume" NavigateUrl="~/EditResume.aspx" Target="_blank"/>
            <asp:TreeNode Text="View Resume" NavigateUrl="~/ViewResume.aspx" Target="_blank"/>
        </asp:TreeNode>
        <asp:TreeNode Text="Employer" NavigateUrl="~/Employer.aspx" Target="_blank">
            <asp:TreeNode Text="Upload Job" NavigateUrl="~/UploadJob.aspx" Target="_blank"/>
            <asp:TreeNode Text="Edit Job" NavigateUrl="~/EditJob.aspx" Target="_blank"/>
            <asp:TreeNode Text="View Job" NavigateUrl="~/ViewJob.aspx" Target="_blank"/>
        </asp:TreeNode>
        <asp:TreeNode Text="Admin" NavigateUrl="~/Admin.aspx" Target="_blank">
            <asp:TreeNode Text="Add User" NavigateUrl="~/AddUser.aspx" Target="_blank"/>
            <asp:TreeNode Text="Edit User" NavigateUrl="~/EditUser.aspx" Target="_blank"/>
            <asp:TreeNode Text="View User" NavigateUrl="~/ViewUser.aspx" Target="_blank"/>
        </asp:TreeNode>
        </Nodes>
    </asp:TreeView>

    <asp:XmlDataSource ID="XmlDataSource2" runat="server" 
    XPath="/Items/TreeViewItem" DataFile="~/TreeViewData.xml">
</asp:XmlDataSource>

3. Drag and drop a TreeView control and set DataSourceID attribute to the xmldatasource control we created in Step 2. Also, set DataBindings as shown below.
<%--<asp:TreeView ID="TreeView2" DataSourceID="XmlDataSource1" runat="server">
    <DataBindings>
        <asp:TreeNodeBinding DataMember="TreeViewItem" TextField="Text"
        NavigateUrlField="NavigateUrl" Target="_blank" />
    </DataBindings>
</asp:TreeView> --%>

    <%--<asp:SiteMapDataSource ShowStartingNode="false" ID="SiteMapDataSource2" runat="server" />--%>

To open the target page in a new window set Target attribute of TreeView control to _blank as shown below.
<%--<asp:TreeView ID="Treeview3" Target="_blank" DataSourceID="SiteMapDataSource1" runat="server">
</asp:TreeView>--%> 
    <br />
    <hr />
    <strong>Login[]</strong>
    <hr />




    <br />
    ChangePassword<br />
    <asp:ChangePassword ID="ChangePassword1" runat="server">
    </asp:ChangePassword>
    <br />
    <br />
    Create UserWizard<br />
    <%--<asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>--%>
    <br />
    Login<br />
    <%--    <asp:Login ID="Login1" runat="server" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" CssClass="form-group" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" OnAuthenticate="Login1_Authenticate" OnLoggedIn="Login1_LoggedIn" OnLoginError="Login1_LoginError" TextLayout="TextOnTop">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
    </asp:Login>--%>
    <br />
    Login<br />
    <asp:LoginName ID="LoginName1" runat="server" />
    <br />
    <br />
    <br />
    Login Status<br />
    <asp:LoginStatus ID="LoginStatus1" runat="server" OnLoggedOut="LoginStatus1_LoggedOut" OnLoggingOut="LoginStatus1_LoggingOut" />
    <br />
    <br />
    LoginView<br />
    <br />
    <br />
    <asp:LoginView ID="LoginView1" runat="server" OnViewChanged="LoginView1_ViewChanged" OnViewChanging="LoginView1_ViewChanging">
    </asp:LoginView>
    <br />
    <br />
    <br />
    PasswordRecovery<br />
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" OnSendingMail="PasswordRecovery1_SendingMail" OnSendMailError="PasswordRecovery1_SendMailError">
    </asp:PasswordRecovery>
    <br />
    <br />
    <br />
    <hr />
    <strong>HTML</strong>
    <hr />
    <input id="Button3" type="button" value="button" />
    <br />
    <input id="Reset1" type="reset" value="reset" />
    <br />
    <input id="Submit1" type="submit" value="submit" />
    <br />
    <input id="Text1" type="text" />
    <br />
    <input id="File1" type="file" />
    <br />
    <input id="Password1" type="password" />
    <br />
    <input id="Checkbox1" type="checkbox" />
    <br />
    <input id="Radio1" type="radio" />
    <br />
    <input id="Hidden1" type="hidden" />
    <br />
    <textarea id="TextArea1" cols="20" rows="2"></textarea>
    <br />
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <img alt="Image Element" src="" />
    <br />
    <select id="Select1">
        <option></option>

    </select>
    <br />
    <div></div>

    <br />
    <hr />
    <strong>Ajax Extensions</strong>
    <hr />

    <hr />
    <strong>Ajax Control Toolkit</strong>
    <hr />




</asp:Content>
