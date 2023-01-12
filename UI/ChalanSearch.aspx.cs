using IT_BLL.DBInfo;
using iTextSharp.tool.xml.html;
using LOGIS_BLL;
using SAD_BLL.DamageInfo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace UI.Transport
{
    public partial class ChalanSearch : System.Web.UI.Page
    {
        private Vehicle bll = new Vehicle();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void chalan_Submit(object sender, EventArgs e)
        {
            Delete();
            Restore();
        }
        private void Delete()
        {
            DataTable dt = bll.GetTripChalanTable(1, 0, SearchText.Text.Trim());
            dgvlist.DataSource = dt;
            dgvlist.DataBind();

        }
        private void Restore()
        {
            DataTable dltStore = bll.GetTripChalanTable(2, 0, SearchText.Text.Trim());
            deleteStore.DataSource = dltStore;
            deleteStore.DataBind();
        }
        protected void dltBtnClick(object sender, EventArgs e)
        {
            
            int srid = int.Parse(((Button)sender).CommandArgument.ToString());

            DataTable dt = bll.GetTripChalanTable(3, srid, ToString());
            Delete();
            Restore();
        }
        protected void rstrBtnClick(object sender, EventArgs e)
        {
            int srid = int.Parse(((Button)sender).CommandArgument.ToString());

            DataTable dt = bll.GetTripChalanTable(4, srid, ToString());
            Restore();
            Delete();
        }


    }
}