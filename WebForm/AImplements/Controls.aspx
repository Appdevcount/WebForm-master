<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Controls.aspx.cs" Inherits="WebForm.TEST.TEST" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <strong>m2k1Bulleted List<br />
    </strong>
    <asp:BulletedList ID="BulletedList1" runat="server" ToolTip="ToolTip">
        <asp:ListItem>Item1</asp:ListItem>
        <asp:ListItem>Item2</asp:ListItem>
    </asp:BulletedList>
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" BorderColor="#9900CC" BorderStyle="Double" Text="ButtonTEST" Width="100px" />
    <br />
    <input type="text" class="btn btn-primary" />
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
    <asp:CheckBox ID="CheckBox1" runat="server" Text="CheckboxA" />
    <br />
    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        <asp:ListItem>CB1</asp:ListItem>
        <asp:ListItem>CB2</asp:ListItem>
    </asp:CheckBoxList>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>DD1</asp:ListItem>
        <asp:ListItem>DD2</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Image ID="Image1" runat="server" />
    <br />
    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="Label1" runat="server" Text="LabelTEST"></asp:Label>
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
    <br />
    <asp:ListBox ID="ListBox1" runat="server" Height="100px" Width="100px">
        <asp:ListItem>LI1</asp:ListItem>
        <asp:ListItem>LI2</asp:ListItem>
    </asp:ListBox>
    <br />
    <asp:Literal ID="Literal1" runat="server" Text="LITERALTEST"></asp:Literal>
    <br />
    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>LI3</asp:ListItem>
    </asp:RadioButtonList>
    <strong>
        <br />
        Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="SubmitTEST" runat="server" Text="Submit" />
    <br />
    <br />
    <asp:Table ID="Table1" runat="server" Height="69px" Width="230px">
        <asp:TableRow runat="server">
        </asp:TableRow>
        <asp:TableRow runat="server">
        </asp:TableRow>
        <asp:TableRow runat="server">
        </asp:TableRow>
    </asp:Table>
    <br />



    <table style="width: 100%;">
        <caption>
            <strong>Login Form</strong>
        </caption>
        <tr>
            <td style="width: 110px"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 110px">Username:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 110px">Password:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 110px"></td>
            <td>&nbsp;</td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 110px"></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Button" />
            </td>
            <td></td>
        </tr>
    </table>
    <br />
    <asp:Image ID="Image2" runat="server" BorderStyle="Solid" BorderWidth="10px" Height="50px" ImageUrl="~/AContent/Images/OG.jpg" ToolTip="Image Tooltip" />
    <br />
    <br />
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="V1" runat="server">
            Multiview
            <label>V1</label>
        </asp:View>
        <asp:View ID="V2" runat="server">
            Multiview
            <label>V1</label>
        </asp:View>
    </asp:MultiView>

    <br />
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" OnFinishButtonClick="Wizard1_FinishButtonClick">
        <HeaderTemplate>
            Header
        </HeaderTemplate>
        <SideBarTemplate>
            <asp:DataList ID="SideBarList" runat="server">
                <ItemTemplate>
                    <asp:LinkButton ID="SideBarButton" runat="server"></asp:LinkButton>
                </ItemTemplate>
                <SelectedItemStyle Font-Bold="True" />
            </asp:DataList>
        </SideBarTemplate>
        <WizardSteps>
            <asp:WizardStep runat="server" Title="Step 1">
                step1
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step 2">
                step2
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <br />
    </asp:Panel>
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    <br />
    <br />
    <asp:Substitution ID="Substitution1" runat="server" />
    <br />
    <asp:View ID="View1" runat="server">
    </asp:View>
    <br />
    <asp:Menu ID="Menu1" runat="server">
        <DynamicItemTemplate>
            <br />
        </DynamicItemTemplate>
    </asp:Menu>
    <br />
    <asp:TreeView ID="TreeView1" runat="server">
        <Nodes>
            <asp:TreeNode Text="New Node" Value="New Node">
                <asp:TreeNode Text="New Node" Value="New Node">
                    <asp:TreeNode Text="New Node" Value="New Node">
                        <asp:TreeNode Text="New Node" Value="New Node"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
            </asp:TreeNode>
            <asp:TreeNode Text="New Node" Value="New Node">
                <asp:TreeNode Text="New Node" Value="New Node"></asp:TreeNode>
                <asp:TreeNode Text="New Node" Value="New Node">
                    <asp:TreeNode Text="New Node" Value="New Node"></asp:TreeNode>
                </asp:TreeNode>
            </asp:TreeNode>
        </Nodes>
    </asp:TreeView>
    <br />
    <asp:ChangePassword ID="ChangePassword1" runat="server">
    </asp:ChangePassword>
    <asp:Login ID="Login1" runat="server">
    </asp:Login>
    <br />
    <asp:LoginName ID="LoginName1" runat="server" />
    <br />
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
    <br />
    <asp:LoginView ID="LoginView1" runat="server">
    </asp:LoginView>
    <br />
    <br />
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
    </asp:PasswordRecovery>
    <br />
    <asp:Timer ID="Timer1" runat="server">
    </asp:Timer>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            Update Panel
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <asp:UpdateProgress ID="UpdateProgress1" runat="server">
    </asp:UpdateProgress>
    <input id="Button3" type="button" value="button" /><input id="File1" type="file" /><br />
    <input id="Reset1" type="reset" value="reset" /><input id="Password1" type="password" /><br />
    <input id="Submit1" type="submit" value="submit" /><input id="Text1" type="text" /><br />
    <input id="Checkbox2" type="checkbox" /><input id="Hidden1" type="hidden" /><br />
    <textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea><br />
    <img alt="" src="" /><br />
    <select id="Select1" name="D1">
        <option></option>
    </select><br />
    <hr />
    <br />
    <div>
        <asp:FormView ID="FormView1" runat="server">
            <InsertItemTemplate>
                <asp:Button ID="Button4" runat="server" Text="Button" />
            </InsertItemTemplate>
        </asp:FormView>
    </div>
    <br />
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="false">
        <ContentTemplate>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click1" Text="Button" />
        </ContentTemplate>
        <%--        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button5" EventName="Click" />
        </Triggers>--%>
    </asp:UpdatePanel>
    <br />
    <br />
    FORM VIEW - Form like iteration display<br />
    <asp:FormView ID="FormView2" runat="server">
    </asp:FormView>
    <br />
    LIST VIEW - List wise item separator display a | b | c<br />
    <br />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="CustomerId" DataSourceID="SqlDataSource1" >
        <AlternatingItemTemplate>
            <span style="background-color: #FFF8DC;">CustomerId:
            <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
            <br />
            <br />
            </span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #008A8C;color: #FFFFFF;">CustomerId:
            <asp:Label ID="CustomerIdLabel1" runat="server" Text='<%# Eval("CustomerId") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br />
            <br />
            </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br />
            <br />
            </span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #DCDCDC;color: #000000;">CustomerId:
            <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
            <br />
            <br />
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div style="font-family: Verdana, Arial, Helvetica, sans-serif;" id="itemPlaceholderContainer" runat="server">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">CustomerId:
            <asp:Label ID="CustomerIdLabel" runat="server" Text='<%# Eval("CustomerId") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
            <br />
            <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
 
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
 
       <br />

    <br />
    DEATILS VIEW
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CustomerId" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" InsertVisible="False" ReadOnly="True" SortExpression="CustomerId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        </Fields>
    </asp:DetailsView>
    <br />
    <br />
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
    <br />
    <asp:Button ID="Button6" runat="server" Text="TEST" />
    <br />
    
    <script src="../../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../../Scripts/jquery-ui.min.js"></script>
    <link href="../../Scripts/jquery-ui.min.css" rel="stylesheet" />
    <script type="text/javascript">
        $(function ()
        {
            $('#Autotext').autocomplete(
               {
                   source: ['Choice1', 'Choice2']
               });
        }
        );
        
    </script>

</asp:Content>
