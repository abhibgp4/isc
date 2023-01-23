<%@ Page Title="" Language="C#" MasterPageFile="~/innermstr.master" AutoEventWireup="true"
    CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<%--<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"  type="text/css"/>
<script src="http://code.jquery.com/jquery-1.9.1.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(

    /* This is the function that will get executed after the DOM is fully loaded */
  function () {
      $("#datepicker").datepicker({
          changeMonth: true, //this option for allowing user to select month
          changeYear: true //this option for allowing user to select from year range
      });
  }

);
</script>--%>
    <script src="datepicker/BeatPicker.min.js" type="text/javascript"></script>
    <script src="datepicker/jquery-1.11.0.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="datepicker/BeatPicker.min.css"/>

    <script type="text/jscript">

        function validatetterms() {
        
            if (document.getElementById('CPH1_CPH1_txtbirthname').value == "") {
                alert('Enter Name, it is Required!');
                document.getElementById('CPH1_CPH1_txtbirthname').focus(); 
                return false;
            }
            
//            if (document.getElementById('CPH1_CPH1_txtdobirth').value == "") {
//                alert('Enter Date of Birth, it is Required!');
//                document.getElementById('CPH1_CPH1_txtdobirth').focus();
//                return false;
//            }
            if (document.getElementById('CPH1_CPH1_txtpobirth').value == "") {
                alert('Enter Place of Birth, it is Required!');
                document.getElementById('CPH1_CPH1_txtpobirth').focus();
                return false;
            }
            if (document.getElementById('CPH1_CPH1_txtcaste').value == "") {
                alert('Enter Caste, it is Required!');
                document.getElementById('CPH1_CPH1_txtcaste').focus();
                return false;
            }
            if (document.getElementById('CPH1_CPH1_txtcastepartner').value == "") {
                alert('Enter Preferred Caste, it is Required!');
                document.getElementById('CPH1_CPH1_txtcastepartner').focus();
                return false;
            }
            if (document.getElementById('CPH1_CPH1_txtqualification').value == "") {
                alert('Enter Qualification, it is Required!');
                document.getElementById('CPH1_CPH1_txtqualification').focus();
                return false;
            }
            if (document.getElementById('CPH1_CPH1_txtprofession').value == "") {
                alert('Enter Profession, it is Required!');
                document.getElementById('CPH1_CPH1_txtprofession').focus();
                return false;
            }
//            if (document.getElementById('CPH1_CPH1_txtincome').value == "") {
//                alert('Enter Qualification, it is Required!');
//                document.getElementById('CPH1_CPH1_txtincome').focus();
//                return false;
//            }
//            if (document.getElementById('CPH1_CPH1_txtcontregi').value == "") {
//                alert('Enter Contact (Regi.), it is Required!');
//                document.getElementById('CPH1_CPH1_txtcontregi').focus();
//                return false;
//            }
//            if (^((\\+91-?)|0)?[0-9]{10}$.test(document.getElementById('CPH1_CPH1_txtcontregi').value))) {
//                alert("enter ");
//                document.getElementById('ctl00_ContentPlaceHolder1_shopCtrl1_txtgEmail').focus();
//                return false;
//            }
              if (document.getElementById('CPH1_CPH1_txtmob').value == "") {
                alert('Enter Mobile No., it is Required!');
                document.getElementById('CPH1_CPH1_txtmob').focus();
                return false;
            }
//            if (/^[\s()+-]*([0-9][\s()+-]*){6,20}$/.test(document.getElementById('CPH1_CPH1_txtmob').value)) {
//                    alert("enter only 10 digit no only ");
//               document.getElementById('CPH1_CPH1_txtmob').focus();
//                return false;
//            }
//            
            if (document.getElementById('CPH1_CPH1_txtemail').value == "") {
                alert('Enter E-mail, it is Required!');
                document.getElementById('CPH1_CPH1_txtemail').focus();
                return false;
            }
            if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(document.getElementById('CPH1_CPH1_txtemail').value))) {
                alert("Valid Email Id is Required");
                document.getElementById('CPH1_CPH1_txtemail').focus();
                return false;
            }
            if (document.getElementById('CPH1_CPH1_txtpresentadd').value == "") {
                alert('Enter Present Address, it is Required!');
                document.getElementById('CPH1_CPH1_txtpresentadd').focus();
                return false;
            }
            if (document.getElementById('CPH1_CPH1_txtpermanentadd').value == "") {
                alert('Enter Permanent Address, it is Required!');
                document.getElementById('CPH1_CPH1_txtpermanentadd').focus();
                return false;

            }
            if (document.getElementById('CPH1_CPH1_txtheight').value == "") {
                alert('Enter Height, it is Required!');
                document.getElementById('CPH1_CPH1_txtheight').focus();
                return false;
            }

            if (document.getElementById('CPH1_CPH1_txtweight').value == "") {
                alert('Enter Weight, it is Required!');
                document.getElementById('CPH1_CPH1_txtweight').focus();
                return false;
            }

            if (document.getElementById('CPH1_CPH1_txtmothertouge').value == "") {
                alert('Enter Mother Tounge, it is Required!');
                document.getElementById('CPH1_CPH1_txtmothertouge').focus();
                return false;
            }

            if (document.getElementById('CPH1_CPH1_ddlmaritalstatus').selectedIndex == 0) {
                alert('Select Marital Status');
                document.getElementById('CPH1_CPH1_ddlmaritalstatus').focus();
                return false;
            }
            if (!document.getElementById('CPH1_CPH1_chkterms').checked) {
                alert("please check out terms and conditions");
                return false;
            }
        //************Date picker link and function***************
        }
    </script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH1" runat="Server">
    <section id="content">
    <div class="container_24">
        <div class="grid_24">
            <div class="top-1">
                <h4 >
                    <strong>Registration</strong> form:</h4>                    
                <div class="ppstyle"><p style="color: White; font-size: 24px; padding-top:8px; font-weight:bold; text-align:center;">
                    Create your profile and start searching for a Life Partner</p></div>
            </div>
        </div>
        <div class="grid_11">
            <div class="form1">
                <fieldset>
                    <h6 style="margin-left: 100px; font-size: 20px; text-decoration: underline; color: #011209;">
                        General/Personal Details</h6>
                    <br />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" ShowMessageBox="true" ShowSummary="false"
                        ForeColor="Red" ValidationGroup="Virus" runat="server" />
                    <label>
                        <strong class="RegisLablel">Birth Name:<span class="spn">*</span></strong>
                        <%--<input type="text" value="" runat="server" id="BirthName" ValidationGroup="Virus" />--%>
                        <asp:TextBox ID="txtbirthname" runat="server" ValidationGroup="Virus"
                                        onkeypress="if((event.keyCode &lt; 32 || event.keyCode &gt; 32) &amp;&amp; (event.keyCode &lt; 65 || event.keyCode &gt; 90) &amp;&amp; (event.keyCode &lt; 97 || event.keyCode &gt; 122)) event.returnValue=false;"></asp:TextBox>
                          <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Birth Name"
                            ValidationGroup="Virus" ControlToValidate="txtbirthname" CssClass="error" SetFocusOnError="true"
                            Display="Dynamic"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                            <%--<asp:RegularExpressionValidator ID="RegularExpressionName" runat="server" ControlToValidate="txtbirthname" 
                            SetFocusOnError="true" ValidationExpression="[a-zA-Z]+" ErrorMessage="Enter Alphabets." 
                            ValidationGroup="Virus" Display="Dynamic"/>--%>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Initiated Name(if applicable)</strong>
                        <%--<input type="text" value="" runat="server" id="InitiatedName" required />--%>
                        
                        <asp:TextBox ID="txtinitname" runat="server" ValidationGroup="Virus"
                        onkeypress="if((event.keyCode &lt; 32 || event.keyCode &gt; 32) &amp;&amp; (event.keyCode &lt; 65 || event.keyCode &gt; 90) &amp;&amp; (event.keyCode &lt; 97 || event.keyCode &gt; 122)) event.returnValue=false;"></asp:TextBox>
                        
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Date Of Birth:<span class="spn">*</span></strong>
                        <input type="text" value="" id="datepicker" runat="server" data-beatpicker="true"/>
                        <%--<asp:TextBox ID="txtdobirth" runat="server" ValidationGroup="Virus" PlaceHolder="DD/MM/YYYY"
                                onkeypress="if((event.keyCode &lt; 45 || event.keyCode &gt; 45) &amp;&amp; (event.keyCode &lt; 47 || event.keyCode &gt; 47) &amp;&amp; (event.keyCode &lt; 48 || event.keyCode &gt; 57)) event.returnValue=false;"></asp:TextBox>--%>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Date Of Birth"
                            ValidationGroup="Virus" ControlToValidate="txtdobirth" CssClass="error" Display="Dynamic"
                            SetFocusOnError="true"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Place Of Birth:<span class="spn">*</span></strong>
                        <%--<input type="text" value="" runat="server" id="PlaceOfBirth" />--%>
                        <asp:TextBox ID="txtpobirth" runat="server" ValidationGroup="Virus" 
                        onkeypress="if((event.keyCode &lt; 32 || event.keyCode &gt; 32) &amp;&amp; (event.keyCode &lt; 65 || event.keyCode &gt; 90) &amp;&amp; (event.keyCode &lt; 97 || event.keyCode &gt; 122)) event.returnValue=false;"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Place Of Birth"
                            ValidationGroup="Virus" ControlToValidate="txtpobirth" CssClass="error" Display="Dynamic"
                            SetFocusOnError="true"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Time Of Birth:</strong>
                        <%--<input type="text" value="" runat="server" id="TimeOfBirth" />--%>
                        <asp:TextBox ID="txttobirth" runat="server" ValidationGroup="Virus" Width="100px"
                        onkeypress="if((event.keyCode &lt; 48 || event.keyCode &gt; 58)) event.returnValue=false;"></asp:TextBox>
                        <asp:DropDownList ID="ddlPMAM" runat="server" ValidationGroup="Virus" CssClass="ddlPMAM" >
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>AM</asp:ListItem>
                        <asp:ListItem>PM</asp:ListItem>
                        </asp:DropDownList>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Caste:<span class="spn">*</span></strong>
                        <%--<input type="text" value="" runat="server" id="Cast" />--%>
                        <asp:TextBox ID="txtcaste" runat="server" ValidationGroup="Virus"
                        onkeypress="if((event.keyCode &lt; 32 || event.keyCode &gt; 32) &amp;&amp; (event.keyCode &lt; 65 || event.keyCode &gt; 90) &amp;&amp; (event.keyCode &lt; 97 || event.keyCode &gt; 122)) event.returnValue=false;"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Caste"
                            ValidationGroup="Virus" ControlToValidate="txtcaste" CssClass="error" Display="Dynamic"
                            SetFocusOnError="true"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Preferred Caste of the Partner:<span class="spn">*</span></strong>
                        <%--<input type="text" value="" runat="server" id="CastPartner" />--%>
                        <asp:TextBox ID="txtcastepartner" runat="server" ValidationGroup="Virus"
                        onkeypress="if((event.keyCode &lt; 32 || event.keyCode &gt; 32) &amp;&amp; (event.keyCode &lt; 65 || event.keyCode &gt; 90) &amp;&amp; (event.keyCode &lt; 97 || event.keyCode &gt; 122)) event.returnValue=false;"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Preferred Caste of the Partner"
                            ValidationGroup="Virus" ControlToValidate="txtcastepartner" CssClass="error"
                            Display="Dynamic" SetFocusOnError="true"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Qalification:<span class="spn">*</span></strong>
                        <%--<input type="text" value="" runat="server" id="Qualification" />--%>
                        <asp:TextBox ID="txtqualification" runat="server" ValidationGroup="Virus"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Qalification"
                            ValidationGroup="Virus" ControlToValidate="txtqualification" CssClass="error"
                            Display="Dynamic" SetFocusOnError="true"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Profession:</strong>
                        <%--<input type="text" value="" runat="server" id="profession" />--%>
                        <asp:TextBox ID="txtprofession" runat="server" ValidationGroup="Virus"></asp:TextBox>
                        
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Monthly Income:</strong>
                        <%--<input type="text" value="" runat="server" id="MonthlyIncome" />--%>
                        <asp:TextBox ID="txtincome" runat="server" ValidationGroup="Virus"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Enter Monthly Income"
                            ValidationGroup="Virus" ControlToValidate="txtincome" CssClass="error" Display="Dynamic"
                            SetFocusOnError="true"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Contact No (Resi):<%--<span class="spn">*</span>--%></strong>
                        <%--<input type="text" value="" runat="server" id="ResiNo" />--%>
                        <asp:TextBox ID="txtcontregi" runat="server" ValidationGroup="Virus" MaxLength="11" 
                        onkeypress="if((event.keyCode &lt; 48 || event.keyCode &gt; 57) &amp;&amp; (event.keyCode &lt; 43 || event.keyCode &gt; 45)) event.returnValue=false;"></asp:TextBox>
                           <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                           ErrorMessage="Enter Resident No " SetFocusOnError="true" 
                            ControlToValidate="txtcontregi" ValidationGroup="Virus"
                           ValidationExpression="^((\\+91-?)|0)?[0-9]{10}$"></asp:RegularExpressionValidator>--%>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Enter Contact No (Resi)"
                            ValidationGroup="Virus" ControlToValidate="txtcontregi" CssClass="error" Display="Dynamic"
                            SetFocusOnError="true"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Mobile:<span class="spn">*</span></strong>
                        <%--<input type="text" value="" runat="server" id="MobileNo" />--%>
                        <asp:TextBox ID="txtmob" runat="server" ValidationGroup="Virus" MaxLength="10" 
                               onkeypress="if((event.keyCode &lt; 48 || event.keyCode &gt; 57) &amp;&amp; (event.keyCode &lt; 43 || event.keyCode &gt; 45)) event.returnValue=false;"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Enter Mobile No"
                            ValidationGroup="Virus" ControlToValidate="txtmob" CssClass="error" Display="Dynamic"
                            SetFocusOnError="true"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                           <asp:RegularExpressionValidator ID="RegularMobileValidate" runat="server" 
                           ErrorMessage="Enter 10 Digits mobile No only" SetFocusOnError="true"  Display="Dynamic"
                            ControlToValidate="txtmob"
                           ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$"></asp:RegularExpressionValidator>
                           
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">E-mail:<span class="spn">*</span></strong>
                        <%--<input type="text" value="" runat="server" id="EmailId" />--%>
                        <asp:TextBox ID="txtemail" runat="server" ValidationGroup="Virus"></asp:TextBox>
                                                   <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                           ErrorMessage="Enter Coreect Mail-Id" SetFocusOnError="true" 
                            ControlToValidate="txtemail"
                           ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>

                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Enter Email ID"
                            ValidationGroup="Virus" ControlToValidate="txtemail" CssClass="error" Display="Dynamic"
                            SetFocusOnError="true"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Present Address:<span class="spn">*</span></strong>
                        <%--<input type="text" value="" runat="server" id="PersentAddress" />--%>
                        <asp:TextBox ID="txtpresentadd" runat="server" ValidationGroup="Virus"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Enter Present Address"
                            ValidationGroup="Virus" ControlToValidate="txtpresentadd" CssClass="error" Display="Dynamic"
                            SetFocusOnError="true"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Permanent Address:<span class="spn">*</span></strong>
                        <%--<input type="text" value="" runat="server" id="permanentAddress" />--%>
                        <asp:TextBox ID="txtpermanentadd" runat="server" ValidationGroup="Virus"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Enter Permanent Address"
                            ValidationGroup="Virus" ControlToValidate="txtpermanentadd" CssClass="error"
                            Display="Dynamic" SetFocusOnError="true">*</asp:RequiredFieldValidator>--%>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                </fieldset>
            </div>
        </div>
        <div class="grid_1">
            &nbsp;</div>
        <div class="grid_11">
            <div class="form1">
                <fieldset>
                    <h6 style="margin-left: 100px; font-size: 20px; text-decoration: underline; color: #011209;">
                        Additional Details</h6>
                    <br />
                    <br />
                    <br />
                    <label>
                        <strong class="RegisLablel">Height(in ft):<span class="spn">*</span></strong>
                        <%--<input type="text" value="" runat="server" id="Height" />--%>
                        <asp:TextBox ID="txtheight" runat="server" ValidationGroup="Virus"
                        onkeypress="if((event.keyCode &lt; 48 || event.keyCode &gt; 57) &amp;&amp; (event.keyCode &lt; 46 || event.keyCode &gt; 46)) event.returnValue=false;"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Enter Height(in ft)"
                            ValidationGroup="Virus" ControlToValidate="txtheight" CssClass="error" Display="Dynamic"
                            SetFocusOnError="true"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Weight(in Kg):<span class="spn">*</span></strong>
                        <%--<input type="text" value="" runat="server" id="waight" />--%>
                        <asp:TextBox ID="txtweight" runat="server" ValidationGroup="Virus"
                        onkeypress="if((event.keyCode &lt; 48 || event.keyCode &gt; 57) &amp;&amp; (event.keyCode &lt; 46 || event.keyCode &gt; 46)) event.returnValue=false;"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Enter Weight(in Kg)"
                            ValidationGroup="Virus" ControlToValidate="txtweight" CssClass="error" Display="Dynamic"
                            SetFocusOnError="true"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel">Mother Tounge:<span class="spn">*</span></strong>
                        <%--<input type="text" value="" id="Tounge" runat="server" />--%>
                        <asp:TextBox ID="txtmothertouge" runat="server" ValidationGroup="Virus"
                        onkeypress="if((event.keyCode &lt; 32 || event.keyCode &gt; 32) &amp;&amp; (event.keyCode &lt; 65 || event.keyCode &gt; 90) &amp;&amp; (event.keyCode &lt; 97 || event.keyCode &gt; 122)) event.returnValue=false;"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Enter Mother Tounge"
                            ValidationGroup="Virus" ControlToValidate="txtmothertouge" CssClass="error" Display="Dynamic"
                            SetFocusOnError="true"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                        <strong class="clear"></strong>
                    </label>


                    <label>
                        <strong class="RegisLablel">Marital Status:<span class="spn">*</span></strong>
                        <%--<input type="text" value="" id="Tounge" runat="server" />--%>
                        <asp:DropDownList ID="ddlmaritalstatus" runat="server" CssClass="ddlstyle" ValidationGroup="Virus">
                        <asp:ListItem>&nbsp;&nbsp;&nbsp;&nbsp;Select</asp:ListItem>
                        <asp:ListItem>Never Married</asp:ListItem>
                        <asp:ListItem>Divorced</asp:ListItem>
                        <asp:ListItem>Widowed</asp:ListItem>
                        <asp:ListItem>Separated</asp:ListItem>
                        <asp:ListItem>Ammulled</asp:ListItem>
                        </asp:DropDownList>
                        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="Enter Marital Status"
                            ValidationGroup="Virus" ControlToValidate="ddlmaritalstatus" CssClass="error" Display="Dynamic"
                            SetFocusOnError="true" InitialValue="Select"><span class="spn">*</span></asp:RequiredFieldValidator>--%>
                        <strong class="clear"></strong>
                    </label>

                    

                    <label>
                        <strong >Two Contact No. Out
                            <br />
                             of Family Member: </strong>
                        <input type="text" value="" style="margin-top: 5px;" id="ContactNo1" runat="server"  MaxLength="25"
                        onkeypress="if((event.keyCode &lt; 48 || event.keyCode &gt; 57) &amp;&amp; (event.keyCode &lt; 43 || event.keyCode &gt; 45)) event.returnValue=false;"/>
                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                           ErrorMessage="Enter Resident No " SetFocusOnError="true" 
                            ControlToValidate="ContactNo1" ValidationGroup="Virus"
                           ValidationExpression="^((\\+91-?)|0)?[0-9]{10}$"></asp:RegularExpressionValidator>--%>
                        <%--<input type="text" value="" id="ContactNo2" runat="server" MaxLength="11"
                        onkeypress="if((event.keyCode &lt; 48 || event.keyCode &gt; 57) &amp;&amp; (event.keyCode &lt; 43 || event.keyCode &gt; 45)) event.returnValue=false;"/>--%>
                         <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                           ErrorMessage="Enter Resident No " SetFocusOnError="true" 
                            ControlToValidate="ContactNo2" ValidationGroup="Virus"
                           ValidationExpression="^((\\+91-?)|0)?[0-9]{10}$"></asp:RegularExpressionValidator>--%>
                        <strong class="clear"></strong>
                    </label>
                    <label>
                        <strong class="RegisLablel" style="margin-left:-197px">upload your Recent Photo
                            </strong>
                        <asp:FileUpload ID="FileUpload" runat="server" Width="170px"></asp:FileUpload>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="FileUpload"
                                 SetFocusOnError="True" ValidationGroup="Virus" runat="server"
                                ValidationExpression="([^\s]+(\.(?i)(doc|docx|pdf|gif|jpeg|jpg|png))$)" ErrorMessage="file is not valid"></asp:RegularExpressionValidator>
                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                           ErrorMessage="Enter Resident No " SetFocusOnError="true" 
                            ControlToValidate="ContactNo1" ValidationGroup="Virus"
                           ValidationExpression="^((\\+91-?)|0)?[0-9]{10}$"></asp:RegularExpressionValidator>--%>
                        <%--<input type="text" value="" id="ContactNo2" runat="server" MaxLength="11"
                        onkeypress="if((event.keyCode &lt; 48 || event.keyCode &gt; 57) &amp;&amp; (event.keyCode &lt; 43 || event.keyCode &gt; 45)) event.returnValue=false;"/>--%>
                         <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                           ErrorMessage="Enter Resident No " SetFocusOnError="true" 
                            ControlToValidate="ContactNo2" ValidationGroup="Virus"
                           ValidationExpression="^((\\+91-?)|0)?[0-9]{10}$"></asp:RegularExpressionValidator>--%>
                        <strong class="clear"></strong>
                    </label>


                    
                    <%--<label>
                        <br />
                        <br />
                        <br />
                        <br />
                        <strong style="text-align: center; font-size: 18px; color: #011209; width: 100%">Have
                            you ever been married before?</strong> <strong>If yes, Please tick
                                <br />
                                in the appropriate box</strong>
                        <input type="radio" value="" runat="server" id="Divorce" style="width: 20px; margin-top: 10px;
                            margin-left: 10px;" onclick="return Divorce_onclick()" />
                        <strong style="width: 50px; margin-top: 6px;">Divorcee</strong>
                        <input type="radio" value="" runat="server" id="widower" style="width: 20px; margin-top: 10px;" />
                        <strong style="width: 100px; margin-top: 6px;">Widow/Wodower</strong>
                    </label>--%>
                    <strong class="clear"></strong>
                    <br />
                    <br />
                    <label >
                        <strong style="width:3px; margin-left:60px" >
                            <asp:CheckBox ID="chkterms" runat="server" /></strong>

                            <strong style="margin: 0">I agree to the SadhuMatrimonial.com <a href="term-condition.aspx"><span class="spn">Terms & Conditions</span></a></strong> 
                        <strong class="clear"></strong>
                    </label>
                    <br />
                    <br />
                    <%--<label>
                        <strong class="RegisLablel">Place:<span class="spn">*</span></strong>
                        <input type="text" value="" runat="server" id="Place" style="width: 100px" />
                        <asp:TextBox ID="txtplace" runat="server" ValidationGroup="Virus"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Enter Place"
                            ValidationGroup="Virus" ControlToValidate="txtplace" CssClass="error" Display="Dynamic"
                            SetFocusOnError="true"><span class="spn">*</span></asp:RequiredFieldValidator>
                        <strong class="clear"></strong>
                    </label>--%>
                </fieldset>
            </div>
            <br />
            <%--<p>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Phone No." CssClass="error" SetFocusOnError="true"
                    Display="Dynamic" ValidationGroup="Virus" ControlToValidate="txtcontregi" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Valid Email Format"  CssClass="error" SetFocusOnError="true"
                    ControlToValidate="txtemail" Display="Dynamic" ValidationGroup="Virus" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Valid Phone No." CssClass="error" SetFocusOnError="true"
                    Display="Dynamic" ValidationGroup="Virus" ControlToValidate="txtmob" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
            </p>--%>
            <br />
            <asp:Button ID="btnSend" runat="server" ValidationGroup="Virus" Text="Submit" Style="border-radius: 8px;
                width: 30%; margin-left: 150px; background: #937BB8; height: 30px; color: White;
                font-size: 20px; cursor:pointer;" OnClick="btnSend_Click1" OnClientClick="return validatetterms()" />
        </div>
        <div class="clear">
        </div>
    </div>
    </section>
</asp:Content>
