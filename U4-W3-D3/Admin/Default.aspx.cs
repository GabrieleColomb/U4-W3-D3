using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace U4_W3_D3
{
    public partial class Default : System.Web.UI.Page
    {
        private List<string> ordini = new List<string>();
        private decimal totale = 0.00m;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["Ordini"] = ordini;
                Session["Totale"] = totale;
            }
            else
            {
                ordini = (List<string>)Session["Ordini"];
                totale = (decimal)Session["Totale"];
            }
        }

        protected void BtnAggiungiPiatto_Click(object sender, EventArgs e)
        {
            string pizzaScelta = ddlPizza.SelectedItem.Text;
            decimal prezzoPizza = Convert.ToDecimal(ddlPizza.SelectedItem.Value);

            string extra = "";

            if (cbMozzarella.Checked)
            {
                extra += "Mozzarella - 1.50€, ";
                prezzoPizza += 1.50m;
            }
            if (cbSalamePiccante.Checked)
            {
                extra += "Salame piccante - 2€, ";
                prezzoPizza += 2.00m;
            }
            if (cbBufala.Checked)
            {
                extra += "Bufala - 2.50€, ";
                prezzoPizza += 2.50m;
            }
            if (cbFunghi.Checked)
            {
                extra += "Funghi - 1.50€, ";
                prezzoPizza += 1.50m;
            }
            if (cbTonno.Checked)
            {
                extra += "Tonno - 2€, ";
                prezzoPizza += 2.00m;
            }
            if (cbPatatine.Checked)
            {
                extra += "Patatine - 1.50€, ";
                prezzoPizza += 1.50m;
            }

            if (!string.IsNullOrEmpty(extra))
            {
                extra = "+ " + extra.TrimEnd(',', ' ');
            }

            string ordine = $"{pizzaScelta} {extra} : {prezzoPizza:C}";
            ordini.Add(ordine);
            totale += prezzoPizza;

            Session["Ordini"] = ordini;
            Session["Totale"] = totale;

            ddlPizza.SelectedIndex = 0;
            cbMozzarella.Checked = false;
            cbSalamePiccante.Checked = false;
            cbBufala.Checked = false;
            cbFunghi.Checked = false;
            cbTonno.Checked = false;
            cbPatatine.Checked = false;
        }

        protected void BtnConcludiOrdine_Click(object sender, EventArgs e)
        {
            foreach (string ordine in ordini)
            {
                lblOrdini.Text += ordine + "<br />";
            }

            lblOrdini.Text += $"<h4>Totale {totale:C}</h4>";

            ddlPizza.Enabled = false;
            cbMozzarella.Enabled = false;
            cbSalamePiccante.Enabled = false;
            cbBufala.Enabled = false;
            cbFunghi.Enabled = false;
            cbTonno.Enabled = false;
            cbPatatine.Enabled = false;
            BtnAggiungiPiatto.Enabled = false;
            BtnConcludiOrdine.Enabled = false;
            lblOrdini.Visible = true;
        }
    }
}