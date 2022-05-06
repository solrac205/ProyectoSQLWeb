using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SQLDataProcessAndObjects;
using CRAEncryptTool;
using CRAneoSUSecurity;
using System.Web.UI.WebControls;

/// <summary>
/// Descripción breve de Global_Def
/// </summary>
public static class Global_Def
{
    
    private static string AppConnectionString;
    private static Boolean ValidAccessSQLConfig = false;
    private static string InitAppViewMode ="";
   
    public static CRADEEncryptClass Decriptor = new CRADEEncryptClass();
    public static CRAEncryptClass Encriptor = new CRAEncryptClass();
    public static DBServer ServidorAplicacion = new DBServer();
    public static Support_User SupportValidate = new Support_User();
    public static Administrator_User AdminUser = new Administrator_User();
    public static TestConnectionSQLDB TestConn = new TestConnectionSQLDB();
    public static string AppStrConnection
    {
        get
        {
            return AppConnectionString;
        }
        set
        {
            AppConnectionString = value;
        }
    }
    public static Boolean ValidAccessConfigSQL
    {
        get
        {
            return ValidAccessSQLConfig;
        }
        set
        {
            ValidAccessSQLConfig = value;
        }
    }

    public static string Init_AppViewMod
    {
        get
        {
            return InitAppViewMode;
        }
        set
        {
            InitAppViewMode = value;
        }
    }

    public static void DisableEnableButton(Button ValueButton)
    {
        if (ValueButton.Enabled == true)
        {
            ValueButton.CssClass = "ButtonEnable";
        }
        else
        {
            ValueButton.CssClass = "ButtonDisable";
        }

    }
}