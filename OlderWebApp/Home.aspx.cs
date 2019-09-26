using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OlderWebApp {
    public partial class Home : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (Session["Username"] == null) {
                Response.Redirect("Login.aspx");
            }
            bindDataMovie();
            string username = Request["Username"];
            string password = Request["Password"];
            lblName.InnerText = Session["Username"].ToString();
            lblusername.InnerText = username;
            lblpassword.InnerText = password;

        }

        protected void btnLogout_Click(object sender, EventArgs e) {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }

        void bindDataMovie() {
            using (LoginDBEntities db = new LoginDBEntities()) {
                var d = db.movies.ToList();
                gvMovie.DataSource = d;
                gvMovie.DataBind();
            }
        }
    }
}