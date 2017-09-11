<%@ Page Title="" Language="C#" MasterPageFile="~/AECommerceCMS/ECommerceCMS.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebForm.AECommerceCMS.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
               <div id="imageCarousel" class="carousel slide" data-interval="2000"
                     data-ride="carousel" data-pause="hover" data-wrap="true">

                    <ol class="carousel-indicators">
                        <li data-target="#imageCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#imageCarousel" data-slide-to="1"></li>
                        <li data-target="#imageCarousel" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="Content/Images/OG.jpg" height="100" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>Desert</h3>
                                <p>Desert Image Description</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="Content/Images/OG.png" height="100" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>Jellyfish</h3>
                                <p>Jellyfish Image Description</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="Content/Images/pic3.jpg" height="100" class="img-responsive">
                            <div class="carousel-caption">
                                <h3>Lighthouse</h3>
                                <p>Lighthouse Image Description</p>
                            </div>
                        </div>

                    </div>

                    <a href="#imageCarousel" class="carousel-control left" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a href="#imageCarousel" class="carousel-control right" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
        <div class="row">
            <div class="col-lg-4">
                <img src="Content/Images/OG.png" class="img-responsive img-circle"/>
                <h3>H3</h3>
                <p>As you can see there is an XML tag called deny and its user attribute is set to “?”. This means that all anonymous users are denied access to any files under the Members folder. Therefore if you are unauthenticated and try to access files under the Members folder, you will be redirected.</p>
            </div>
            <div class="col-lg-4">
                <img src="Content/Images/OG.png" class="img-responsive img-rounded"/>
                <h3>H3</h3>
                <p>As you can see there is an XML tag called deny and its user attribute is set to “?”. This means that all anonymous users are denied access to any files under the Members folder. Therefore if you are unauthenticated and try to access files under the Members folder, you will be redirected.</p>
            </div>
            <div class="col-lg-4">
                <img src="Content/Images/OG.png" class="img-responsive img-thumbnail"/>
                <h3>H3</h3>
                <p>As you can see there is an XML tag called deny and its user attribute is set to “?”. This means that all anonymous users are denied access to any files under the Members folder. Therefore if you are unauthenticated and try to access files under the Members folder, you will be redirected.</p>
            </div>
        </div>
        </div>

</asp:Content>
