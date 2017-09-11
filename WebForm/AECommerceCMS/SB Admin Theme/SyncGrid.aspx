<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SyncGrid.aspx.cs" Inherits="WebForm.AECommerceCMS.SB_Admin_Theme.BWFM" %>

<%@ Register Assembly="Syncfusion.EJ.Web, Version=15.1460.0.33, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.JavaScript.Web" TagPrefix="ej" %>
<%@ Register Assembly="Syncfusion.EJ, Version=15.1460.0.33, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.JavaScript.Models" TagPrefix="ej" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <ej:Grid ID="Grid1" runat='server' AllowFiltering="True" AllowPaging="True" AllowSorting="True" CssClass="" DataSourceCachingMode="None"
        DataSourceID="SqlDataSource1" EnableLoadOnDemand="False" MinWidth="0" OnServerPdfExporting="Grid1_ServerPdfExporting" OnServerExcelExporting="Grid1_ServerExcelExporting" OnServerWordExporting="Grid1_ServerWordExporting">
        <Columns>
            <ej:Column AllowEditing="False" DataType="number" Field="ProfileDetId" IsIdentity="True" IsPrimaryKey="True">
            </ej:Column>
            <ej:Column DataType="string" Field="ItemName">
            </ej:Column>
<%--            <ej:Column DataType="string" Field="ItemDescription">
            </ej:Column>
            <ej:Column DataType="string" Field="ItemType">
            </ej:Column>
            <ej:Column DataType="number" Field="AvailableCount">
            </ej:Column>
            <ej:Column DataType="date" Field="FromDate">
            </ej:Column>
            <ej:Column DataType="string" Field="InterestedTopicMulti">
            </ej:Column>
            <ej:Column DataType="string" Field="Country">
            </ej:Column>--%>
        </Columns>
        <FilterSettings FilterType="Menu"></FilterSettings>

        <ClientSideEvents QueryCellInfo="OnQueryCellInfo" DataBound="OnDataBound" />
        <ToolbarSettings ShowToolbar="true" ToolbarItems="excelExport,wordExport,pdfExport"></ToolbarSettings>
    </ej:Grid>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>" SelectCommand="SELECT [ProfileDetId], [ItemName] FROM [ItemData]"></asp:SqlDataSource>
    <%--, [ItemDescription], [ItemType], [AvailableCount], [FromDate], [InterestedTopicMulti], [Country]--%>
    <script type="text/javascript">
        function OnQueryCellInfo(args) {
            /* Add required attributes to render Bootstrap tooltip to cells in queryCellInfo 
             * In the below args.data[args.column.field] will retrieve the current cell data*/
            $(args.cell).attr({
                "data-toggle": "tooltip",
                "data-container": "body",
                "title": args.data[args.column.field]
            });
        }
        function OnDataBound(args) {
            //Render Bootstrap tooltip here
            $("[data-toggle=tooltip]").tooltip();
        }
    </script>





    <%--Menu--%>


    <link href="http://cdn.syncfusion.com/js/web/responsive-css/ej.responsive-latest.css" rel="stylesheet" />
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
                left: -79px;
                list-style-type: none;
                margin: 0;
                padding: 0;
                position: relative;
                top: 50px;
                width: 128px;
            }



                .temp ul li {
                    font-size: 13px;
                }



                    .temp ul li a {
                        text-decoration: none;
                        cursor: pointer;
                        color: #000;
                    }

        .e-menu.e-horizontal li > ul, .e-menu.e-horizontal li > ul > li:hover {
            /*background-color: #fff;*/ 
            background:none;
        }



        .e-menu.e-horizontal > li > ul:after {
            /*border-color: transparent transparent #fff;*/
            background:none;
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
    <ej:Menu ID="template" TitleText="Main Navigation Title Text" runat="server">

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
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
