<%@ Page Title="" Language="C#" MasterPageFile="~/AECommerceCMS/SB Admin Theme/SBAdmin.Master" AutoEventWireup="true" CodeBehind="SomeControls.aspx.cs" Inherits="WebForm.AECommerceCMS.SB_Admin_Theme.SomeControls" %>

<%@ Register Assembly="Syncfusion.EJ.Web, Version=15.1460.0.33, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.JavaScript.Web" TagPrefix="ej" %>

<%--<%@ Register Assembly="Syncfusion.EJ.Web, Version=15.1460.0.33, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.JavaScript.Web" TagPrefix="ej" %>
<%@ Register Assembly="Syncfusion.EJ, Version=15.1460.0.33, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.JavaScript.Models" TagPrefix="ej" %>--%>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <ej:DateTimePicker ID="DateTimePicker1" runat="server"></ej:DateTimePicker>


        <asp:Menu ID="Menu4" runat="server" Orientation="Horizontal">

            <Items>
                <asp:MenuItem NavigateUrl="A1" Text="A1" Value="A1">
                    <asp:MenuItem NavigateUrl="B1" Text="B1" Value="B1"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="B2" Text="B2" Value="B2"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="A2" Text="A2" Value="A1">
                    <asp:MenuItem NavigateUrl="B1" Text="B2" Value="B2"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="B2" Text="B2" Value="B2"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="A3" Text="A3" Value="A1"></asp:MenuItem>
            </Items>
        </asp:Menu>


        <br />

        <style type="text/css">
            .menuitemstyle {
                border-width: 2px;
                border-color: violet;
                background-color: gold;
                text-decoration-color: black;
                font-style: italic;
            }

            .submenuitemstyle {
                border-width: 2px;
                border-color: purple;
                background-color: yellow;
                text-decoration-color: black;
                font-style: italic;
            }
        </style>

        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <LevelMenuItemStyles>
                <asp:MenuItemStyle CssClass="menuitemstyle" />
                <asp:MenuItemStyle CssClass="submenuitemstyle" />
            </LevelMenuItemStyles>
            <LevelSubMenuStyles>
                <asp:SubMenuStyle CssClass="submenuitemstyle" />
                <asp:SubMenuStyle CssClass="menuitemstyle" />
            </LevelSubMenuStyles>

            <Items>
                <asp:MenuItem NavigateUrl="A1" Text="A1" Value="A1">
                    <asp:MenuItem NavigateUrl="B1" Text="B1" Value="B1"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="B2" Text="B2" Value="B2"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="A2" Text="A2" Value="A1">
                    <asp:MenuItem NavigateUrl="B1" Text="B2" Value="B2"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="B2" Text="B2" Value="B2"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="A3" Text="A3" Value="A1"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <br />

        <asp:Menu ID="Menu2" runat="server" Orientation="Vertical" StaticDisplayLevels="1">
            <StaticMenuStyle BackColor="Yellow" BorderColor="Black" BorderWidth="2px" Font-Bold="true" />
            <StaticMenuItemStyle BackColor="Gold" Font-Italic="true" ForeColor="Black" BorderColor="Blue" />

            <Items>
                <asp:MenuItem NavigateUrl="A1" Text="A1" Value="A1">
                    <asp:MenuItem NavigateUrl="B1" Text="B1" Value="B1"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="B2" Text="B2" Value="B2"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="A2" Text="A2" Value="A1">
                    <asp:MenuItem NavigateUrl="B1" Text="B2" Value="B2"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="B2" Text="B2" Value="B2"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="A3" Text="A3" Value="A1"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <br />

        <asp:Menu ID="Menu3" runat="server" Orientation="Vertical" StaticDisplayLevels="2">
            <StaticMenuStyle BackColor="Yellow" BorderColor="Black" BorderWidth="2px" Font-Bold="true" />
            <StaticMenuItemStyle BackColor="Gold" Font-Italic="true" ForeColor="Black" BorderColor="Blue" />

            <Items>
                <asp:MenuItem NavigateUrl="A1" Text="A1" Value="A1">
                    <asp:MenuItem NavigateUrl="B1" Text="B1" Value="B1"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="B2" Text="B2" Value="B2"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="A2" Text="A2" Value="A1">
                    <asp:MenuItem NavigateUrl="B1" Text="B2" Value="B2"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="B2" Text="B2" Value="B2"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="A3" Text="A3" Value="A1"></asp:MenuItem>
            </Items>
        </asp:Menu>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerId] = @CustomerId" InsertCommand="INSERT INTO [Customers] ([Name], [Country]) VALUES (@Name, @Country)" SelectCommand="SELECT * FROM [Customers]" UpdateCommand="UPDATE [Customers] SET [Name] = @Name, [Country] = @Country WHERE [CustomerId] = @CustomerId">
            <DeleteParameters>
                <asp:Parameter Name="CustomerId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="CustomerId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        Bootstrap Hover menu + submenus test
        <link href="Just%20taken%20out%20bootstrap-dropdown-hover/css/bootstrap-dropdownhover.min.css" rel="stylesheet" />
        <link href="Just%20taken%20out%20bootstrap-dropdown-hover/css/animate.css" rel="stylesheet" />
        <script src="../../Scripts/jquery-1.10.2.min.js"></script>
        <script src="Just%20taken%20out%20bootstrap-dropdown-hover/js/bootstrap-dropdownhover.min.js"></script>
        <style type="text/css"></style>
        <script type="text/javascript"></script>

        <div class="dropdown">
            <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" data-hover="dropdown"
                data-animations="zoomInDown zoomInLeft zoomInUp zoomInRight">
                <%--data-animations="fadeInDown fadeInLeft fadeInUp fadeInRight" These style classes can be applied on data-anumations from https://daneden.github.io/animate.css/--%>
                Dropdown <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li class="dropdown">
                    <a href="#">One more dropdown</a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li class="dropdown">
                            <a href="#">One more dropdown</a>
                            <ul class="dropdown-menu">
                                ...
                            </ul>
                        </li>
                        <li><a href="#">Something else here</a></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
                <li><a href="#">Something else here</a></li>
                <li><a href="#">Separated link</a></li>
            </ul>
        </div>
        <asp:TreeView ID="TreeView1" runat="server">
            <HoverNodeStyle BackColor="Wheat" Font-Bold="true" />
            <LeafNodeStyle BackColor="Tomato" />
            <SelectedNodeStyle BackColor="YellowGreen" />
            <RootNodeStyle BackColor="SpringGreen" />
            <Nodes>
                <asp:TreeNode NavigateUrl="~/AECommerceCMS/SB Admin Theme/SomeControls.aspx" Text="T1">
                    <asp:TreeNode NavigateUrl="~/AECommerceCMS/SB Admin Theme/SomeControls.aspx" Text="T11"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/AECommerceCMS/SB Admin Theme/SomeControls.aspx" Text="T12"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/AECommerceCMS/SB Admin Theme/SomeControls.aspx" Text="T2"></asp:TreeNode>
            </Nodes>
        </asp:TreeView>
        <hr />
        <asp:TreeView ID="TreeView2" runat="server" DataSourceID="XmlDataSource1" Target="_blank">
            <HoverNodeStyle BackColor="Wheat" Font-Bold="true" />
            <LeafNodeStyle BackColor="Tomato" />
            <SelectedNodeStyle BackColor="YellowGreen" />
            <DataBindings>
                <asp:TreeNodeBinding DataMember="TreeViewItem"  TextField="Text" NavigateUrlField="NavigateUrl" Target="_blank" />
            </DataBindings>
        </asp:TreeView>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="../TreeViewXMLFile.xml" XPath="Items/TreeViewItem"></asp:XmlDataSource>



    </form>

</asp:Content>
