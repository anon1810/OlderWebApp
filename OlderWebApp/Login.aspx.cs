using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OlderWebApp {
    public partial class Login : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void Button1_Click(object sender, EventArgs e) {
            using (LoginDBEntities entities = new LoginDBEntities()) {
                var result = entities.Users.Where(c=>c.Name== txtUsername.Value && c.Pass == txtPassword.Value);
                if (result.Count() > 0) {
                    Session["Username"] = txtUsername.Value;
                    Response.Redirect("Home.aspx?Username=" + txtUsername.Value + "&Password=" + txtPassword.Value);
                }
            }
        }

    }
}