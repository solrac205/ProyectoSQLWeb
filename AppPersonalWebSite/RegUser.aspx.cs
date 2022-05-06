using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SQLDataProcessAndObjects;

public partial class RegUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SQLButton_Click(object sender, EventArgs e)
    {
        MySQLFunction mySQLFunction = new MySQLFunction();
        mySQLFunction.StrConnectionToTest = Global_Def.AppStrConnection;
        lblResult.Text = "SQL result: " + mySQLFunction.GetSQLValue("SELECT CURRENT_TIMESTAMP() AS FECHA;");

        return;
    }

}