﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["HomePageFlag"] = "0";
     
        if (Session["USERNAME"] != null)
        {
            btnSignup.Visible = false;
            btnSignin.Visible = false;
            btnSignOut.Visible = true;
            MyAccount.Visible = true;
            adminLink.Visible = false;

            //string ConnectionString = WebConfigurationManager.ConnectionStrings["RoomMagnet"].ConnectionString; // connection string
            //System.Data.SqlClient.SqlConnection dbConnection;http://localhost:50503/PropertyDescription.aspx
            //dbConnection = new System.Data.SqlClient.SqlConnection(); // creaeting connection to the database
            //dbConnection.ConnectionString = ConnectionString; // giving connection string to dbconnection
            //dbConnection.Open(); // opening the connection for intraction
            //System.Data.SqlClient.SqlCommand update = new System.Data.SqlClient.SqlCommand();
            //update.Connection = dbConnection;

           // update.CommandText = "select firstname from rmuser where email = '" + Session["USERNAME"].ToString() + "'";
          //  String email = update.ExecuteScalar().ToString();

            tbEmail.InnerText = "HI " + Session["FRISTNAME"].ToString();

          

            if (Session["USERTYPE"] != null)
            {
                if (Session["USERTYPE"].ToString() == "t")
                {
                    tenantDashboard.Visible = true;
                    houseOwnerDashboard.Visible = false;
                    adminDashboard.Visible = false;
                    adminLink.Visible = false;


                    //addProperties.Visible = false;
                    //myFavorites.Visible = true;
                    //myProperties.Visible = false;
                    //myProfile.Visible = true;

                }
                else if (Session["USERTYPE"].ToString() == "h")
                {
                    houseOwnerDashboard.Visible = true;
                    tenantDashboard.Visible = false;
                    adminDashboard.Visible = false;
                    adminLink.Visible = false;

                    //addProperties.Visible = true;
                    //myFavorites.Visible = true;
                    //myProfile.Visible = true;
                    //myProperties.Visible = true;

                }
                else if (Session["USERTYPE"].ToString() == "a")
                {
                    houseOwnerDashboard.Visible = false;
                    tenantDashboard.Visible = false;
                    adminDashboard.Visible = true;
                    adminLink.Visible = true;

                    //addProperties.Visible = false;
                    //myProperties.Visible = false;
                    //myFavorites.Visible = false;
                    //myProfile.Visible = false;
                }

            }
        }
        else
        {
            btnSignup.Visible = true;
            btnSignin.Visible = true;
            btnSignOut.Visible = false;
            MyAccount.Visible = false;
            btnMessage.Visible = false;

        }


    }

    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/index.aspx");
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Session["SearchPass"] = tbSearch.Text;
        Session["HomePageFlag"] = "1";
        Response.Redirect("PropertySearch.aspx");
       

    }
}