using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.IO;
namespace WebApplication1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            WebRequest W = WebRequest.Create(new Uri("https://www.google.com/recaptcha/api/siteverify?secret=6LehuP8SAAAAAPa7DCMC2J0GMG5g4NMT4sb5etRK&response=" + Request.Form["g-recaptcha-response"]));
            W.Method = "GET";
            WebResponse r = W.GetResponse();
            Stream st = r.GetResponseStream();
            StreamReader sr = new StreamReader(st);
            char[] buffer= new char[1024];
            
            sr.Read(buffer,0,1024);
            string resp = new string(buffer);
            if (TextBox1.Text.ToLower().IndexOf("yuv") != -1 || TextBox2.Text.ToLower().IndexOf("yuv") != -1 || resp.IndexOf("true")==-1 || !CheckBox1.Checked)
            {
                if (TextBox1.Text.ToLower().IndexOf("yuv") != -1)
                {
                    TextBox1.Text = "Choose another name";
                }
                if (TextBox2.Text.ToLower().IndexOf("yuv") != -1)
                {
                    TextBox2.Text = "Choose another name";
                }
                if(resp.IndexOf("true")==-1)
                {
                    Response.Write("I Don't work with robots");
                }
                if (!CheckBox1.Checked)
                {
                    Response.Write("I Don't work with criminals");
                }
            }
            else
            {
                using(SmtpClient s = new SmtpClient())
                {
                    s.Host = "smtp.mandrillapp.com";
                    s.Port = 587;
                    s.EnableSsl = false;
                    s.DeliveryMethod = SmtpDeliveryMethod.Network;
                    s.UseDefaultCredentials = false;
                    s.Credentials = new NetworkCredential("schnitzel@gmx.com", "jOhSx96ZNHbK0uhSy97ZWQ");
                    MailMessage m = new MailMessage();
                    m.From = new MailAddress("schnitzel@gmx.com", TextBox1.Text);
                    m.To.Add(new MailAddress(TextBox2.Text));
                    m.Subject=TextBox3.Text;
                    m.Body = TextBox4.Text;
                    for(int i =0; i<int.Parse(TextBox5.Text);i++)
                    {
                        s.Send(m);
                    }



                }
                Response.Write("SPAMMING COMPLETE!");
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}