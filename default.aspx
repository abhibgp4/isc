<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" %>

<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>
<script runat="server">

</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script>
        $(document).ready(function () {
            $('.slider')._TMS({
                show: 0,
                pauseOnHover: false,
                prevBu: '.prev',
                nextBu: '.next',
                playBu: false,
                duration: 800,
                preset: 'fade',
                pagination: '.pags',
                pagNums: false,
                slideshow: 5000,
                numStatus: false,
                banners: false,
                waitBannerAnimation: false,
                progressBar: true
            })
        });
    </script>
</asp:Content>
<asp:Content ContentPlaceHolderID="Slider" ID="contents" runat="server">
    <uc1:header ID="header1" runat="server" />
    <div id="slide">
        <div class="slider">
            <ul class="items">
                <li>
                    <img src="images/slider1.jpg" alt=""></li>
                <li>
                    <img src="images/slider2.jpg" alt=""></li>
                <li>
                        <img src="images/slider3.jpg" alt=""></li>
                <li>
                       <img src="images/slider4.jpg" alt=""></li>
            </ul>
        </div>
        <ul class="pags">
            <li><a href="#">
                <img src="images/small1.jpg" alt=""><span></span></a></li>
            <li><a href="#">
                <img src="images/small2.jpg" alt=""><span></span></a></li>
            <li><a href="#">
                <img src="images/small3.jpg" alt=""><span></span></a></li>
            <li><a href="#">
                <img src="images/small4.jpg" alt=""><span></span></a></li>
        </ul>
        <a href="#" class="prev">&nbsp;</a><a href="#" class="next">&nbsp;</a>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" runat="Server">
    <div class="container_24">
        <div class="grid_24">
            <br />
            <br />
            <h4>
                <strong>Welcome to</strong> SadhuMatrimonial.com</h4>
        </div>
        <p>
            <a href="http://sadhumatrimonial.com/">SadhuMatrimonial.com</a> is one of most loved
            matrimonial websites that has helped hundreds of thousands of members find their
            perfect life partner with in <strong>Delhi-NCR</strong> only. We believe choosing
            a life partner is a big and important event in an individual's life. We are here
            to make your dreams come true. <a href="aboutus.aspx" class="link-1" style="line-height: 18px;
                float: none; margin-top: 0">Read more</a>
        </p>
        <br />
        <img src="images/wel.jpg" class="img-border" alt="">
        <asp:Button ID="Button1" runat="server" Height="41px" Text="Register Now" Width="201px"
            align="center" BackColor="#937bb8" Style="left: 107px; top: 31px; position: relative; cursor:pointer;
            border-radius: 20px; color: White; font-size: 20px;" PostBackUrl="registration.aspx" />
        <div class="clear">
        </div>
    </div>
</asp:Content>
