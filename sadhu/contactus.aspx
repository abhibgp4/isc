<%@ Page Title="" Language="C#" MasterPageFile="~/innermstr.master" AutoEventWireup="true"
    CodeFile="ContactUs.aspx.cs" Inherits="ContectUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" runat="Server">
    <section id="content">
<div class="container_24">
    <div class="grid_6 suffix_1">
      <div class="top-1">
        <h4 class="h4-border"><strong>Contact</strong> info:</h4>
        <dl class="adr">
          <dt class="clr-1"><strong>Sadhu Matrimonial</strong></dt>
          <dd class="line-height">H. No. 556, West Guru Angad Nagar
          <br />Laxmi Nagar, New Delhi-110092</dd>
          <dd><span>Mobile:</span><strong class="clr-2">+91 880 085 5396</strong></dd>
          <dd><span>Whatapp:</span><strong class="clr-2">+91 971 125 4209</strong></dd>
          <dd class="p1"><span>Email:</span><a href="#" class="link">sadhumatrimoni@gmail.com</a></dd>
        </dl>
      </div>
    </div>
    <div class="grid_1">
      <div class="line-5">&nbsp;</div>
    </div>
        <div class="grid_16">
      <div class="top-1">
        <h4 class="h4-border"><strong>Contact</strong> form:</h4>
        <div id="form1">
          <fieldset>
            <label><strong>Full name:</strong>
              <input type="text" value="" id="TxtName" runat="server">
              <strong class="clear"></strong></label>
            <label><strong>Email:</strong>
              <input type="text" value="" id="TxtEmail" runat="server">
              <strong class="clear"></strong></label>
            <label><strong>Message:</strong>
              <textarea  id="TxtMessage" runat="server"></textarea></label>
             <%-- <strong class="clear"></strong></label>
            <strong class="clear"></strong>
            <div class="btns"><a href="#" class="link">Clear</a><a href="#" class="link">Send</a></div>--%>
          </fieldset>
        </div>
      </div><br /><br />
<asp:Button ID="SendMail" runat="server" Text="Submit" style=" border-radius:8px; cursor:pointer; margin-left:213px;
     background:#937BB8; height:30px; color:White; font-size:20px; width:20% " onclick="SendMail_Click" />
    </div>
    <div class="clear"></div>
    </div>
    </section>
</asp:Content>
