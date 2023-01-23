using System;
using System.Net.Mail;
using System.Configuration;

/// <summary>
/// Summary description for CommonClass
/// </summary>
namespace NitaiTech.Common
{
    public class CommonClass
    {
        private object[] param = new object[6];
        public object this[int i]
        {
            get { return param[i]; }
            set { param[i] = value; }
        }
        public CommonClass()
        {
        }
        public void SendMails(string from,string mailTo, string subj, string mailBody)
        {
            MailAddress MailToAddress = new MailAddress(mailTo);
            MailAddress MailfromAddress = new MailAddress(from);

            MailMessage mail = new MailMessage(MailfromAddress, MailToAddress);
            mail.Subject = subj;
            mail.Body = mailBody;
            //mail.CC.Add(new MailAddress(ConfigurationManager.AppSettings["adminemail"]));
            TrySendmail(mail);
        }
        private void TrySendmail(MailMessage mail)
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = ConfigurationManager.AppSettings["StmpServer"];
            smtp.Port =int.Parse(ConfigurationManager.AppSettings["portno"].ToString());
            smtp.EnableSsl = false;
            mail.IsBodyHtml = true;
            smtp.UseDefaultCredentials = false;
            try
            {
                smtp.Send(mail);
            }
            catch (SmtpException ex)
            {
                throw new Exception(ex.Message);
            }
            catch (Exception e)
            {
                throw new Exception("Can't send Mail.", e);
            }
        }
        
        public void SendMails(string from, string mailto, string subject, string body,string resume)
        {
            MailAddress MailtoAddress = new MailAddress(mailto);
            MailAddress MailfromAddress = new MailAddress(from);

            //string smtpServer1 = "127.0.0.1";
            MailMessage mailmsg = new MailMessage(MailfromAddress, MailtoAddress);//from, to, subject, body);
            mailmsg.Subject = subject;
            mailmsg.Body = body;
            Attachment attach = new Attachment(resume);
            mailmsg.Attachments.Add(attach);
            TrySendmail(mailmsg);
           
        }
        public static string dateFormate(string x1)
        {
            string _date1 = x1;

            string[] splited1 = x1.Split('/');
            try
            {
                if (splited1[2].Length >= 4)
                {
                    splited1[2] = splited1[2].Substring(0, 4);
                    _date1 = splited1[1] + "/" + splited1[0] + "/" + splited1[2];
                }
            }
            catch (Exception ex) { }
            return _date1;
        }
        
    }
}