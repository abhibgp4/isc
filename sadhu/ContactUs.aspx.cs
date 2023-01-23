using System;
using System.Configuration;

public partial class ContectUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SendMail_Click(object sender, EventArgs e)
    {
        NitaiTech.Common.CommonClass objmail = new NitaiTech.Common.CommonClass();
        string Subject = " Bride/Broom Contect Us Message";
        string body = "Name-:" + TxtName.Value + "<br/><br/>EmailId-:" + TxtEmail.Value + "<br/><br/>Message:-" + TxtMessage.Value;
        try
        {
            objmail.SendMails(TxtEmail.Value, ConfigurationManager.AppSettings["admin"], Subject, body);
            ClearField();
        }
        catch (Exception ex)
        {
            Response.Write("Mail not to send, please try again...");
            Response.Write(ex);
        }
    }

    protected void ClearField()
    {
        TxtName.Value = "";
        TxtEmail.Value = "";
        TxtMessage.Value = "";
    }

}