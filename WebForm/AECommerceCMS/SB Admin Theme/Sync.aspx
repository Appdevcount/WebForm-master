<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sync.aspx.cs" Inherits="WebForm.AECommerceCMS.SB_Admin_Theme.Independent" %>

<%@ Register Assembly="Syncfusion.EJ.Web, Version=15.1460.0.33, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.JavaScript.Web" TagPrefix="ej" %>

<%@ Register Assembly="Syncfusion.EJ, Version=15.1460.0.33, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.JavaScript.Models" TagPrefix="ej" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <%--            <link href="http://cdn.syncfusion.com/13.1.0.21/js/web/flat-azure/ej.web.all.min.css" rel="stylesheet" />
<script src="http://cdn.syncfusion.com/js/assets/external/jquery-1.10.2.min.js"></script>
<script src="http://cdn.syncfusion.com/js/assets/external/jquery.easing.1.3.min.js"></script>//jQuery.easing external dependency has been removed from version 14.3.0.49 onwards. Kindly include this jQuery.easing dependency for versions lesser than 14.3.0.49 in order to support animation effects.
<script src="http://cdn.syncfusion.com/js/assets/external/jquery.globalize.min.js"></script>
<script src="http://cdn.syncfusion.com/js/assets/external/jsrender.min.js"></script>
<script src="http://cdn.syncfusion.com/13.1.0.21/js/web/ej.web.all.min.js"></script> 
<script src="http://cdn.syncfusion.com/13.1.0.21/js/web/ej.webform.min.js"></script>--%>
            <%--<asp:PlaceHolder ID="PlaceHolder1" runat="server">
                <%: Styles.Render("~/bundles/EJCSS") %>
            </asp:PlaceHolder>--%>
            <%--            Below 2 are Bootstrap Thmes
             refer to 2 files namely, ej.widgets.core.min.css and ej.theme.min.css. When the file ej.widgets.all.min.css is referred, then it is not necessary to include the files, ej.widgets.core.min.css and ej.theme.min.css in your project, as ej.widgets.all.min.css is the combination of these both--%>
            <%--<link href="../../Content/ej/web/ej.widgets.core.bootstrap.min.css" rel="stylesheet" />
            <link href="../../Content/ej/web/ej.theme.min.css" rel="stylesheet" />--%>
            <%--            <link href="../../Content/ej/responsive.css" rel="stylesheet" />
            <link href="../../Content/ej/ej.responsive.css" rel="stylesheet" />--%>
            <%--            <asp:PlaceHolder ID="PlaceHolder2" runat="server">
                <%: Scripts.Render("~/bundles/EJJS") %>
            </asp:PlaceHolder>
            <script src="../../Scripts/ej/ej.grid.min.js"></script>
            <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
            <script src="../../Scripts/bootstrap.min.js"></script>--%>
            <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
            <link href="../../Content/Site.css" rel="stylesheet" />
            <%--<link href="../../Content/ej/web/default-theme/ej.web.all.min.css" rel="stylesheet" />--%>
            <%--<link href="../../Content/ej/web/flat-azure-dark/ej.web.all.min.css" rel="stylesheet" />--%>
            <%--<link href="../../Content/ej/web/flat-lime/ej.web.all.min.css" rel="stylesheet" />--%>
            <%--<link href="../../Content/ej/web/gradient-azure/ej.web.all.min.css" rel="stylesheet" />--%>
            <%--<link href="../../Content/ej/web/high-contrast-01/ej.web.all.min.css" rel="stylesheet" />--%>
            <%--<link href="../../Content/ej/web/flat-saffron/ej.web.all.min.css" rel="stylesheet" />--%>
            <link href="../../Content/ej/web/flat-lime-dark/ej.web.all.min.css" rel="stylesheet" />
            <%--<link href="../../Content/ej/web/material/ej.web.all.min.css" rel="stylesheet" />--%>
            <%--<link href="../../Content/ej/web/default-theme/ej.theme.min.css" rel="stylesheet" />--%>
            <script src="../../Scripts/jquery-1.10.2.min.js"></script>
            <%--<script src="../../Scripts/bootstrap.min.js"></script>--%>
            <script src="../../Scripts/ej/web/ej.web.all.min.js"></script>
            <script src="../../Scripts/ej/web/common/ej.webform.min.js"></script>

            <script src="../../Scripts/ej/ej.menu.min.js"></script><%-- Bug fix script from Syncfussion support--%>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="form-group">
                            <label class="control-label">Date</label>
                            <ej:DatePicker ID="Datepicker1" CssClass="" runat="server"></ej:DatePicker>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date</label>
                            <input type="text" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date</label>
                            <ej:RadioButton ID="RadioButton1" runat="server" Name="Radio"></ej:RadioButton>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date</label>
                            <ej:DropDownList ID="DropDownList1" runat="server">
                                <Items>
                                    <ej:DropDownListItem ID="DropDownListItem2" runat="server" Text="A" Value="A">
                                    </ej:DropDownListItem>
                                    <ej:DropDownListItem ID="DropDownListItem1" runat="server" Text="B" Value="B">
                                    </ej:DropDownListItem>
                                </Items>

                            </ej:DropDownList>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date</label>
                            <ej:CheckBox ID="CheckBox1" runat="server"></ej:CheckBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date</label>
                            <ej:DateTimePicker ID="DateTimePicker1" Width="100%" runat="server"></ej:DateTimePicker>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date</label>
                            <ej:Tooltip ID="Tooltip1" runat="server"></ej:Tooltip>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date</label>
                            <ej:GroupButton ID="GroupButton1" runat="server"></ej:GroupButton>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date</label>
                            <ej:ListBox ID="ListBox1" runat="server"></ej:ListBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date</label>
                            <ej:PercentageTextBox ID="PercentageTextBox1" runat="server"></ej:PercentageTextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date</label>
                            <ej:CurrencyTextBox ID="CurrencyTextBox1" runat="server"></ej:CurrencyTextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date</label>
                            <ej:NumericTextBox ID="NumericTextBox1" runat="server"></ej:NumericTextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Date</label>
                            <ej:Button ID="Button2" runat="server" Text="Button" CssClass="btn btn-primary"></ej:Button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-lg-5">

                        <ej:TreeView ID="TreeView2" runat="server" EnablePersistence="true">
                            <Nodes>
                                <ej:TreeViewNode Text="A1">
                                    <Nodes>
                                        <ej:TreeViewNode Text="A1" Url="">
                                        </ej:TreeViewNode>
                                        <ej:TreeViewNode Text="A1">
                                        </ej:TreeViewNode>
                                    </Nodes>
                                </ej:TreeViewNode>
                                <ej:TreeViewNode Text="A1">
                                    <Nodes>
                                        <ej:TreeViewNode Text="A1">
                                        </ej:TreeViewNode>
                                        <ej:TreeViewNode Text="A1">
                                        </ej:TreeViewNode>
                                    </Nodes>
                                </ej:TreeViewNode>
                            </Nodes>
                        </ej:TreeView>
                        <br />

                        <br />
                        <br />
                    </div>
                </div>
            </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>" SelectCommand="SELECT [ItemName], [ItemDescription], [ItemType], [AvailableCount], [FromDate], [ToDate], [Email], [Gender], [Continent], [ConfirmText1], [ConfirmText2], [InterestedTopicMulti] FROM [ItemData]"></asp:SqlDataSource>

        <ej:Grid ID="Grid2" runat="server" AllowFiltering="True" AllowPaging="True" AllowSorting="True"
            DataSourceCachingMode="None" DataSourceID="SqlDataSource1" EnableLoadOnDemand="True" MinWidth="0">
            <Columns>
                <ej:Column DataType="string" Field="ItemName">
                </ej:Column>
                <ej:Column DataType="string" Field="ItemDescription">
                </ej:Column>
                <ej:Column DataType="string" Field="ItemType">
                </ej:Column>
                <ej:Column DataType="number" Field="AvailableCount">
                </ej:Column>
                <ej:Column DataType="date" Field="FromDate">
                </ej:Column>
                <ej:Column DataType="date" Field="ToDate">
                </ej:Column>
                <ej:Column DataType="string" Field="Email">
                </ej:Column>
                <ej:Column DataType="string" Field="Gender">
                </ej:Column>
                <ej:Column DataType="string" Field="Continent">
                </ej:Column>
                <ej:Column DataType="string" Field="ConfirmText1">
                </ej:Column>
                <ej:Column DataType="string" Field="ConfirmText2">
                </ej:Column>
                <ej:Column DataType="string" Field="InterestedTopicMulti">
                </ej:Column>
            </Columns>
            <SelectionSettings EnableToggle="true" />
            <FilterSettings FilterBarMode="Immediate" ShowFilterBarStatus="True" StatusBarWidth="300" FilterType="Menu"></FilterSettings>
        </ej:Grid>

        <ej:DropDownList ID="DropDownList4" runat="server" DataSourceCachingMode="None" DataSourceID="SqlDataSource2" DisableItemsByIndex="" EnableItemsByIndex=""
            FilterType="Contains" Locale="en-US" MaxPopupHeight="" MaxPopupWidth="" MultiSelectMode="None" PopupHeight="152px" SortOrder="Ascending" Text=""
            Value="" VirtualScrollMode="Normal" DataTextField="Name" DataValueField="CountryId" EnableFilterSearch="true" WatermarkText="Select a Option">
        </ej:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>"
            SelectCommand="SELECT [CustomerId], [Name] FROM [Customers]"></asp:SqlDataSource>

        <div style="width: 530px;">
            <div style="float: left;">
                <span>Select Group</span>
                <ej:DropDownList ID="DropDownList5" runat="server" DataTextField="text" DataValueField="parentId" CascadeTo="DropDownList2" ClientSideOnChange="onChange" WatermarkText="Select"></ej:DropDownList>
            </div>

            <div style="float: left; padding-left: 50px;">
                <span>Select Country</span>
                <ej:DropDownList ID="DropDownList2" runat="server" DataTextField="text" Enabled="false" WatermarkText="Select"></ej:DropDownList>
            </div>

            <div style="float: right;">
                <span>Select Players</span>
                <ej:DropDownList ID="DropDownList3" runat="server" DataTextField="text" Enabled="false" WatermarkText="Select"></ej:DropDownList>
            </div>
        </div>
        <ej:DropDownList ID="DropDownList6" runat="server" DataSourceCachingMode="None" DataSourceID="SqlDataSource2" DisableItemsByIndex="" EnableItemsByIndex=""
            FilterType="Contains" Locale="en-US" MaxPopupHeight="" MaxPopupWidth="" MultiSelectMode="None" PopupHeight="152px" SortOrder="Ascending" Text=""
            Value="" VirtualScrollMode="Normal" DataTextField="Name" DataValueField="CountryId" ShowCheckbox="true" EnableFilterSearch="true" WatermarkText="Select a Option">
        </ej:DropDownList>

        <script type="text/javascript">
            function onChange() {
                var ctry = $('#<%=DropDownList2.ClientID%>').data("ejDropDownList");
                ctry.enable();
                var player = $('#<%=DropDownList3.ClientID%>').data("ejDropDownList");
                player.enable();
            }
        </script>
        <br />
        <br />
        <br />
        <%--        <style type="text/css">
            .menuf {
                border: 1px solid #BBBCBB;
                border-radius: 10px 10px 10px 10px;
                padding: 50px;
                margin-top: 40px;
                width: 700px;
                height: 50px;
                margin-left: 100px;
            }
        </style>
        <div class="menuf">
            <ej:Menu ID="Menu2" Width="100%" runat="server">

                <Items>

                    <ej:MenuItem Id="MenuItem1" Text="Products">

                        <Items>

                            <ej:MenuItem Text="ASP.NET">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="ASP.NET MVC">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Mobile MVC">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Silverlight">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Windows Forms">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Windows Phone">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="WinRT (XMAL)">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="WPF">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Orubase Studio">
                            </ej:MenuItem>

                        </Items>

                    </ej:MenuItem>

                    <ej:MenuItem Id="MenuItem2" Text="Support">

                        <Items>

                            <ej:MenuItem Text="Direct-Trac Support">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Community Forums">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Knowledge Base">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Online Documentation">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Services">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Community Forums">
                            </ej:MenuItem>

                        </Items>

                    </ej:MenuItem>

                    <ej:MenuItem Id="MenuItem3" Text="Purchase">
                    </ej:MenuItem>

                    <ej:MenuItem Id="MenuItem4" Text="Downloads">

                        <Items>

                            <ej:MenuItem Text="Evaluation">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Free E-Books">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Metro Studio">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Latest Version">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Version History">
                            </ej:MenuItem>

                        </Items>

                    </ej:MenuItem>

                    <ej:MenuItem Id="MenuItem5" Text="Resources">

                        <Items>

                            <ej:MenuItem Text="Technology Resource Portal">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Case Studies">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Bouchers & Datasheets">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="FAQ">
                            </ej:MenuItem>

                        </Items>

                    </ej:MenuItem>

                    <ej:MenuItem Id="MenuItem6" Text="Company">

                        <Items>

                            <ej:MenuItem Text="About Us">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Company Blog">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Technical Blog">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Newsletter">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Partners">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Locations">
                            </ej:MenuItem>

                        </Items>

                        <Items>

                            <ej:MenuItem Text="Contact Us">
                            </ej:MenuItem>

                        </Items>

                    </ej:MenuItem>

                </Items>

            </ej:Menu>
        </div>--%>

        <style type="text/css">
            #Menu3 {
                margin-left: 50px;
            }

            .e-menu li > ul > li > a {
                padding: 3px 24px 3px 35px;
            }

            .mailicon {
                background-image: url("../../Content/ici.png");
                height: 18px;
                left: 2px;
                top: 4px;
                width: 24px;
            }

            .sprite-root {
                background-position: -25px -49px;
            }

            .sprite-deleted {
                background-position: -24px -152px;
            }

            .sprite-drafts {
                background-position: -24px -83px;
            }

            .sprite-folder {
                background-position: -24px -464px;
            }

            .sprite-inbox {
                background-position: -25px -13px;
            }

            .sprite-junk {
                background-position: -23px -187px;
            }

            .sprite-notes {
                background-position: -26px -394px;
            }

            .sprite-outbox {
                background-position: -24px -500px;
            }

            .sprite-sentitems {
                background-position: -26px -118px;
            }
        </style>
        <ej:Menu ID="Menu3" Width="100%" EnableCenterAlign="true" EnableAnimation="true" EnableTheming="true" EnableSeparator="false" runat="server">

            <Items>

                <ej:MenuItem Text="Google" Url="https://www.google.co.in/" SpriteCssClass="mailicon sprite-deleted">

                    <Items>

                        <ej:MenuItem Text="ASP.NET">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="ASP.NET MVC">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Mobile MVC">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Silverlight">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Windows Forms">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Windows Phone">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="WinRT (XMAL)">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="WPF">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Orubase Studio">
                        </ej:MenuItem>

                    </Items>

                </ej:MenuItem>

                <ej:MenuItem Text="Support">

                    <Items>

                        <ej:MenuItem Text="Direct-Trac Support">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Community Forums">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Knowledge Base">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Online Documentation">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Services">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Community Forums">
                        </ej:MenuItem>

                    </Items>

                </ej:MenuItem>

                <ej:MenuItem Text="Purchase">
                </ej:MenuItem>

                <ej:MenuItem Text="Downloads">

                    <Items>

                        <ej:MenuItem Text="Evaluation">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Free E-Books">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Metro Studio">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Latest Version">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Version History">
                        </ej:MenuItem>

                    </Items>

                </ej:MenuItem>

                <ej:MenuItem Text="Resources">

                    <Items>

                        <ej:MenuItem Text="Technology Resource Portal">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Case Studies">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Bouchers & Datasheets">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="FAQ">
                        </ej:MenuItem>

                    </Items>

                </ej:MenuItem>

                <ej:MenuItem Text="Company">

                    <Items>

                        <ej:MenuItem Text="About Us">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Company Blog">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Technical Blog">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Newsletter">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Partners">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Locations">
                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Contact Us">
                        </ej:MenuItem>

                    </Items>

                </ej:MenuItem>

            </Items>

        </ej:Menu>
        <ej:Menu ID="syncfusionProducts" Orientation="Horizontal" ShowSubLevelArrows="true" SubMenuDirection="Left" runat="server">

            <Items>

                <ej:MenuItem Id="Products" Text="Products">

                    <Items>

                        <ej:MenuItem Text="ASP.NET"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="ASP.NET MVC"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Mobile MVC"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Silverlight"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Windows Forms"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Windows Phone"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="WinRT (XMAL)"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="WPF"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Orubase Studio"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Metro Studio"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="What's New">

                            <Items>

                                <ej:MenuItem Text="WinRT (XMAL)"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="WPF"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="Silverlight"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="Windows Forms"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="ASP.NET MVC"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="ASP.NET"></ej:MenuItem>

                            </Items>



                        </ej:MenuItem>

                    </Items>

                </ej:MenuItem>

                <ej:MenuItem Id="Support" Text="Support">

                    <Items>

                        <ej:MenuItem Text="Direct-Trac Support"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Community Forums"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Knowledge Base"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Online Documentation"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Services">

                            <Items>

                                <ej:MenuItem Text="Consulting"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="Taining"></ej:MenuItem>

                            </Items>

                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Community Forums"></ej:MenuItem>

                    </Items>

                </ej:MenuItem>

                <ej:MenuItem Id="Purchase" Text="Purchase"></ej:MenuItem>

                <ej:MenuItem Id="Downloads" Text="Downloads">

                    <Items>

                        <ej:MenuItem Text="Evaluation"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Free E-Books"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Metro Studio"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Latest Version"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Version History"></ej:MenuItem>

                    </Items>

                </ej:MenuItem>

                <ej:MenuItem Id="Resources" Text="Resources">

                    <Items>

                        <ej:MenuItem Text="Technology Resource Portal">

                            <Items>

                                <ej:MenuItem Text="E-books"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="White Papers"></ej:MenuItem>

                            </Items>

                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Case Studies"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Bouchers & Datasheets"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="FAQ"></ej:MenuItem>

                    </Items>

                </ej:MenuItem>

                <ej:MenuItem Id="Company" Text="Company">

                    <Items>

                        <ej:MenuItem Text="About Us">

                            <Items>

                                <ej:MenuItem Text="More About Us"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="Management"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="News & Events"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="Customer Quotes"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="Customer Lists"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="Case Studies"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="Awards"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="Media Kit"></ej:MenuItem>

                            </Items>

                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Company Blog"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Technical Blog"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Newsletter"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Partners">

                            <Items>

                                <ej:MenuItem Text="Technology Partners"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="Training Partners"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="Consulting Partners"></ej:MenuItem>

                            </Items>



                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Locations">

                            <Items>

                                <ej:MenuItem Text="RDU"></ej:MenuItem>

                            </Items>

                            <Items>

                                <ej:MenuItem Text="Chennai"></ej:MenuItem>

                            </Items>

                        </ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Contact Us"></ej:MenuItem>

                    </Items>

                    <Items>

                        <ej:MenuItem Text="Contact Us"></ej:MenuItem>

                    </Items>

                </ej:MenuItem>

            </Items>

        </ej:Menu>
        <style type="text/css">

            .temp {
                height: 237px;
                width: 375px;
                font-family: segoe UI;
                cursor: default;
                background-size: 100% 100%;
            }



                .temp span {
                    color: red;
                    float: left;
                    font-size: 20px;
                    left: 20px;
                    position: relative;
                    top: 25px;
                    width: 100px;
                }
                
.temp ul { 
        float: left; 
        font-size: 14px; 
        left: -79px !important; 
        list-style-type: none; 
        margin: 0; 
        padding: 0; 
        position: relative; 
        top: 50px !important; 
        width: 128px; 
    } 
                /*.temp ul {
                    float: left;
                    font-size: 14px;
                    left: -79px;
                    list-style-type: none;
                    margin: 0;
                    padding: 0;
                    position: relative;
                    top: 50px;
                    width: 128px;
                }*/



                    .temp ul li {
                        font-size: 13px;
                    }



                        .temp ul li a {
                            text-decoration: none;
                            cursor: pointer;
                            color: #000;
                        }

            .e-menu.e-horizontal li > ul, .e-menu.e-horizontal li > ul > li:hover {
                background-color: #fff; /*#fff;*/
            }



            .e-menu.e-horizontal > li > ul:after {
                border-color: transparent transparent #fff;
            }

            .temp1 {
                background-image: url("../../Content/ici.png");
            }



            .temp2 {
                background-image: url("../../Content/ici.png");
            }



            .temp3 {
                background-image: url("../../Content/ici.png");
            }



            .temp4 {
                background-image: url("../../Content/ici.png");
            }
        </style>
        <ej:Menu ID="template" runat="server">

            <Items>

                <ej:MenuItem Text="My Computer">

                    <Items>

                        <ej:MenuItem Text="Child1">

                            <Template>

                                <div class="temp temp1">

                                    <span>Disks</span>

                                    <ul>

                                        <li><a>Local Disk : C</a></li>

                                        <li><a>Local Disk : D</a></li>

                                    </ul>

                                    <ul>

                                        <li><a>Local Disk : E</a></li>

                                        <li><a>Local Disk : F</a></li>

                                    </ul>

                                </div>

                            </Template>

                        </ej:MenuItem>

                    </Items>

                </ej:MenuItem>

                <ej:MenuItem Text="Libraries">

                    <Items>

                        <ej:MenuItem Text="Child1">

                            <Template>



                                <div class=" temp temp2">

                                    <div>

                                        <span>Documents</span>

                                        <ul>

                                            <li><a>Images</a></li>

                                            <li><a>Videos</a></li>

                                        </ul>

                                        <ul>

                                            <li><a>Documents</a></li>

                                            <li><a>Music</a></li>

                                        </ul>

                                    </div>

                                </div>



                            </Template>

                        </ej:MenuItem>

                    </Items>

                </ej:MenuItem>

                <ej:MenuItem Text="Favourites">

                    <Items>

                        <ej:MenuItem Text="Child1">

                            <Template>



                                <div class="temp temp3">

                                    <div>

                                        <span>Favourites</span>

                                        <ul>

                                            <li><a>Download</a></li>

                                            <li><a>Recent Places</a></li>

                                        </ul>

                                        <ul>

                                            <li><a>Desktop</a></li>

                                        </ul>

                                    </div>

                                </div>



                            </Template>

                        </ej:MenuItem>

                    </Items>

                </ej:MenuItem>

                <ej:MenuItem Text="Gaming">

                    <Items>

                        <ej:MenuItem Text="Child1">

                            <Template>



                                <div class=" temp temp2">

                                    <div>

                                        <span>GAMING</span>

                                        <ul>

                                            <li><a>Upcoming</a></li>

                                            <li><a>Consoles</a></li>

                                        </ul>

                                        <ul>

                                            <li><a>FIFA 2999</a></li>

                                            <li><a>Carom legend</a></li>

                                        </ul>

                                    </div>

                                </div>



                            </Template>

                        </ej:MenuItem>

                    </Items>

                </ej:MenuItem>

            </Items>

        </ej:Menu>


        <div id="control" style="width: 400px">

            <ej:Accordion ID="Accordion1" runat="server" EnableMultipleOpen="false" Collapsible="true" SelectedItemIndex="-1" ShowRoundedCorner="true">

                <%--<CustomIcon Header="e-arrowheaddown" SelectedHeader="e-arrowheadup" />--%>

                <Items>

                    <ej:AccordionItem Text="Essential Studio ASP.NET">

                        <ContentSection>

                            <ul>

                                <li>

                                    <h5>DocIO</h5>

                                </li>

                                <li>

                                    <h5>Pdf  </h5>

                                </li>

                                <li>

                                    <h5>Gauge  </h5>

                                </li>

                                <li>

                                    <h5>Schedule  </h5>

                                </li>

                                <li>

                                    <h5>Diagram  </h5>

                                </li>

                                <li>

                                    <h5>Tools </h5>

                                </li>

                            </ul>

                        </ContentSection>

                    </ej:AccordionItem>

                    <ej:AccordionItem Text="Essential Studio ASP.NET MVC">

                        <ContentSection>

                            <ul>

                                <li>

                                    <h5>Chart </h5>

                                </li>

                                <li>

                                    <h5>Grid  </h5>

                                </li>

                                <li>

                                    <h5>Gantt  </h5>

                                </li>

                                <li>

                                    <h5>Schedule  </h5>

                                </li>

                                <li>

                                    <h5>Diagram  </h5>

                                </li>

                            </ul>

                        </ContentSection>

                    </ej:AccordionItem>

                    <ej:AccordionItem Text="Essential Studio Javascript">

                        <ContentSection>

                            <ul>

                                <li>

                                    <h5>Chart </h5>

                                </li>

                                <li>

                                    <h5>Grid  </h5>

                                </li>

                                <li>

                                    <h5>Gantt  </h5>

                                </li>

                                <li>

                                    <h5>Schedule  </h5>

                                </li>

                                <li>

                                    <h5>Diagram  </h5>

                                </li>

                            </ul>

                        </ContentSection>

                    </ej:AccordionItem>

                </Items>

            </ej:Accordion>

        </div>

        <%-- Map the data fields to the corresponding Field items--%>

        <div>
            Select a component/s:

            <ej:Autocomplete ID="ComponentList" runat="server" Query="ej.Query().from('ComponentLists').select('ComponentId', 'ComponentName')"
                DataTextField="ComponentName" DataUniqueKeyField="ComponentId" Width="500px" >
            </ej:Autocomplete>

        </div>
        <ej:Scroller ID="scrollcontent" runat="server" Height="170" Width="350" ScrollTop="10" ScrollLeft="20" ButtonSize="20">
        <ScrollerContent>
            <div>
                <div class="sampleContent">
                    <h3 style="font-size: 20px;">MVC</h3>
                    <div>
                        <p>
                            Model–view–controller (MVC) is a software architecture pattern which separates the
                            representation of information from the user's interaction with it.
                            The model consists of application data, business rules, logic, and functions. A view can be any
                            output representation of data, such as a chart or a diagram. Multiple views of the same data
                            are possible, such as a bar chart for management and a tabular view for accountants.
                            The controller mediates input, converting it to commands for the model or view.The central
                            ideas behind MVC are code reusability and n addition to dividing the application into three
                            kinds of components, the MVC design defines the interactions between them.
                        </p>
                        <ul>
                            <li>
                                <b>A controller </b>can send commands to its associated view to change the view's presentation of the model (e.g., by scrolling through a document).
                                It can also send commands to the model to update the model's state (e.g., editing a document).
                            </li>
                            <li>
                                <b>A model</b> notifies its associated views and controllers when there has been a change in its state. This notification allows the views to produce updated output, and the controllers to change the available set of commands.
                                A passive implementation of MVC omits these notifications, because the application does not require them or the software platform does not support them.
                            </li>
                            <li>
                                <b>A view</b> requests from the model the information that it needs to generate an output representation to the user.
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </ScrollerContent>
    </ej:Scroller>
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
