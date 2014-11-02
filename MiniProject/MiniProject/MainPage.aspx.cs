using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MiniProject
{
   
    public partial class MainPage : System.Web.UI.Page
    {
        public List<SearchResult> results;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] == null)
            {
                Response.Redirect("LoginRegisterPage.aspx");
            }
            else
            {
               // Response.Write("logged in " + Session["UserID"]);
            }

            alertText.Text = "Welcome, " + Session["Name"];
        }

        protected void searchbtn_Click(object sender, EventArgs e)
        {
            WebClient webClient = new WebClient();
           string json =  webClient.DownloadString("http://api.pricecheckindia.com/feed/product/mobile_phones/" +
                HttpUtility.UrlEncode(SearchText.Text) +".json?user=ankitank&key=JTVATIQJUCZKUKQO");

           json = JObject.Parse(json).SelectToken("product").ToString();
           JArray arr = JArray.Parse(json);
           foreach (JObject o in arr.Children<JObject>())
           {
               json = o.SelectToken("stores").ToString();
           }
          
            results = JArray.Parse(json).ToObject<List<SearchResult>>();

           foreach(SearchResult result in results)
           {
                HtmlGenericControl dl = new HtmlGenericControl("dl");
               dl.Attributes.Add("class", "dl-horizontal well");
               resultholder.Controls.Add(dl);

               HtmlGenericControl dt = new HtmlGenericControl("dt");
               dt.InnerText = "Website:";
               dl.Controls.Add(dt);
               HtmlGenericControl dd = new HtmlGenericControl("dd");
               dd.InnerText = result.Website;
               dl.Controls.Add(dd);

                dt = new HtmlGenericControl("dt");
               dt.InnerText = "Price:";
               dl.Controls.Add(dt);
               dd = new HtmlGenericControl("dd");
               dd.InnerText = result.Price;
               dl.Controls.Add(dd);

                dt = new HtmlGenericControl("dt");
               dt.InnerText = "URL:";
               dl.Controls.Add(dt);
                dd = new HtmlGenericControl("dd");
               dd.InnerHtml = "<img src='" + result.ImageURL + "' style=\"max-width:190px; max-height:190px;\"  />";
               dl.Controls.Add(dd);

              
           }
        }
    }
}