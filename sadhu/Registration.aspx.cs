using System;
using System.Text;
using System.Web.UI;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnSend_Click1(object sender, EventArgs e)
    {
            NitaiTech.Common.CommonClass objRegis= new NitaiTech.Common.CommonClass ();

            string UploadedFile = "No Uploaded File";

            if (FileUpload.HasFile)
            {
                UploadedFile = getnewFileName(FileUpload.FileName, txtbirthname.Text);
                FileUpload.SaveAs(Server.MapPath(@"~/ClientPhoto/" + UploadedFile));
            }            

        string subject="New Bride/Broom Detail ";
        string body = "<table cellpadding='2' width='500px' >"
                    + "<tr><td colspan='2'><b><u>General/Personal Detail</u></b></td></tr>"
                     + "<tr><td>Birth Name-:</td><td>" + txtbirthname.Text + "</td></tr>"
                     + "<tr><td>Date Of Birth:-</td><td>" + datepicker.Value +"</td></tr>"
                     + "<tr><td>Place Of Birth:- </td><td>" + txtpobirth.Text + "</td></tr>"
                     + "<tr><td>Time Of Birth:-</td><td>" + txttobirth.Text + "</td><td>" + ddlPMAM.SelectedItem.Text + "</td></tr>"
                     + "<tr><td>Cast:- </td><td>" + txtcaste.Text + "</td></tr>"
                     + "<tr><td>Preferred Cast of the Partner:- </td><td>" + txtcastepartner.Text + "</td></tr>"
                     + "<tr><td>Qualification:- </td><td>" + txtqualification.Text + "</td></tr>"
                     + "<tr><td>Profession:- </td><td>" + txtprofession.Text + "</td></tr>"
                     + "<tr><td>Monthly Income:- </td><td>" + txtincome.Text + "</td></tr>"
                     + "<tr><td colspan='2'><b><u>Contact Details</u></b></td></tr><tr><td>Resident No:-</td><td>" + txtcontregi.Text + "</td></tr><tr><td>Mobile No:-</td><td>" + txtmob.Text + "</td></tr>"
                     + "<tr><td>Email Id:- </td><td>" + txtemail.Text + "<td></tr>"
                     + "<tr><td>Persent Address:- </td><td>" + txtpresentadd.Text + "</td></tr>"
                     + "<tr><td>Permanent Address:- </td><td>" + txtpermanentadd.Text + "</td></tr>"
                     + "<tr><td colspan='2'><b><u>Additional Detail</u></b></td></tr>"
                     + "<tr><td>Height:-</td><td>" + txtheight.Text + "</td></tr>"
                     + "<tr><td>Weight:-</td><td>" + txtweight.Text + "</td></tr>"
                     + "<tr><td>Mother Tounge:- </td><td>" + txtmothertouge.Text + "</td></tr>"
                     + "<tr><td>Marital Status:-</td><td>"+ddlmaritalstatus.SelectedItem.Text + "</td></tr>"
                     //+ "<tr><td colspan='2'>Have You ever been married before ?</td></tr>"
                     + "<tr><td colspan='2'><b>Two Contact No Out of Family member</b></td></tr><tr><td>First Contact No:-</td><td>" + ContactNo1.Value + "</td></tr>"
                     //+ "<tr><td colspan='2'>I " + verfiyOwn.Value + " am certify that above details are true.</td></tr>"
                     //+ "<tr><td>Place:-</td><td>" + txtplace.Text + " </td></tr> 
                     +"</table>";
                        

           // NitaiTech.Common.CommonClass objmail = new NitaiTech.Common.CommonClass();
            try
            {
                if (FileUpload.HasFile)
                {
                    objRegis.SendMails(txtemail.Text, ConfigurationManager.AppSettings["admin"], subject, body, Server.MapPath(@"~/ClientPhoto/" + UploadedFile));
                    ClientScript.RegisterStartupScript(Page.GetType(), "Key", "<script>alert('Message Sent Successfully')</script>");
                    ClearField();
                }
                else
                {
                    objRegis.SendMails(txtemail.Text, ConfigurationManager.AppSettings["admin"], subject, body);
                    ClientScript.RegisterStartupScript(Page.GetType(), "Key", "<script>alert('Message Sent Successfully')</script>");
                    ClearField();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Mail not to send, please try again...");
                Response.Write(ex);
            }
    
}

    public string getnewFileName(string Path, string name)
    {
        string[] firstNM = new string[3];
        Path = Path.Substring(Path.LastIndexOf(".") + 1);
        string filename;
        string username;
        username = name;
        if (username == "")
            filename = "";
        else
        {
            firstNM = username.Split(' ');
            filename = firstNM[0].ToString();
            Random rnd = new Random();
            filename += "-" + rnd.Next(10000, 20000);
            filename += "." + Path;
        }
        return filename;
    }

    protected void ClearField()
    {
        txtbirthname.Text = "";
        txtinitname.Text = "";
        datepicker.Value= "";
        txtpobirth.Text = "";
        txttobirth.Text = "";
        ddlPMAM.SelectedIndex = 0;
        txtcaste.Text = "";
        txtcastepartner.Text = "";
        txtqualification.Text = "";
        txtprofession.Text = "";
        txtincome.Text = "";
        txtcontregi.Text = "";
        txtmob.Text = "";
        txtemail.Text = "";
        txtpresentadd.Text = "";
        txtpermanentadd.Text = "";
        txtheight.Text = "";
        txtweight.Text = "";
        txtmothertouge.Text = "";
        ddlmaritalstatus.SelectedIndex = 0;
        ContactNo1.Value = "";
        //ContactNo2.Value = "";
        chkterms.Checked = false;
        //txtplace.Text = "";
    }
}