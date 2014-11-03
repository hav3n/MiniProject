using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
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
            if (!this.IsPostBack)
            {
                List<string> categories = new List<string>();
                categories.Add("mobile_phones");
                categories.Add("tablets");
                categories.Add("landline_phones");
                categories.Add("mobile_bluetooth_headsets");
                categories.Add("mobile_headphone_headsets");
                categories.Add("mobile_batteries");
                categories.Add("mobile_chargers");
                categories.Add("mobile_memory");
                categories.Add("point_shoots");
                categories.Add("camcorders");
                categories.Add("dslrs");
                categories.Add("binoculars_telescopes");
                categories.Add("digital_photo_frames");
                categories.Add("desktops");
                categories.Add("laptops");
                categories.Add("monitors");
                categories.Add("printers_single");
                categories.Add("printers_multi");
                categories.Add("scanners");
                categories.Add("projectors");
                categories.Add("lcd_tv");
                categories.Add("led_tv");
                categories.Add("plasma_tv");
                categories.Add("crt_tv");
                categories.Add("home_theaters");
                categories.Add("video_players");
                categories.Add("speakers");
                categories.Add("music_systems");
                categories.Add("gaming_consoles");
                categories.Add("ipods");
                categories.Add("mp3_players");
                categories.Add("mp4_players");
                categories.Add("washing_machines");
                categories.Add("refrigerators");
                categories.Add("air_conditioners");
                categories.Add("irons");
                categories.Add("water_purifiers");
                categories.Add("vacuum_cleaners");
                categories.Add("microwave_ovens");
                categories.Add("otg");
                categories.Add("induction_cooktops");
                categories.Add("electric_cookers");
                categories.Add("mixer_grinder_juicer");
                categories.Add("hand_blenders");
                categories.Add("food_processors");
                categories.Add("sandwich_makers");
                categories.Add("popup_toasters");
                categories.Add("coffee_makers");
                categories.Add("electric_kettles");
                categories.Add("pen_drives");
                categories.Add("external_hard_disks");
                categories.Add("data_cards");
                categories.Add("routers");
                categories.Add("switches");
                categories.Add("processors");
                categories.Add("graphic_cards");
                categories.Add("rams");
                categories.Add("motherboards");
                categories.Add("tv_tuners");
                categories.Add("mouse");
                categories.Add("keyboards");
                categories.Add("webcams");
                categories.Add("laptop_batteries");
                categories.Add("laptop_adapters");
                catedropDown.DataSource = categories;
                catedropDown.DataBind();
            }
            HttpCookie cookie = Request.Cookies["userData"];
            if (cookie["Name"] == null && Session["Name"] == null)
            {
                Response.Redirect("LoginRegisterPage.aspx");
            }
            else
            {
                // Response.Write("logged in " + Session["UserID"]);
            }
            if (cookie["Name"] != null)
                alertText.Text = "Welcome, " + cookie["Name"] + "!";
            else
            alertText.Text = "Welcome, " + Session["Name"] + "!";
        }

        protected void searchbtn_Click(object sender, EventArgs e)
        {
            WebClient webClient = new WebClient();
            string json = webClient.DownloadString("http://api.pricecheckindia.com/feed/product/" + catedropDown.SelectedValue.ToString() + "/" +
                 HttpUtility.UrlEncode(SearchText.Text) + ".json?user=ankitank&key=JTVATIQJUCZKUKQO");

            json = JObject.Parse(json).SelectToken("product").ToString();



            JArray arr = JArray.Parse(json);
            foreach (JObject o in arr.Children<JObject>())
            {
                json = o.SelectToken("stores").ToString();
            }

            var table = JsonConvert.DeserializeObject<DataTable>(json);


            resultGrid.DataSource = table;
            resultGrid.DataBind();

            resultGrid.Visible = true;

        }
    }
}