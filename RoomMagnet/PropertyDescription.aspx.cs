﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PropertyDescription : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            int propertyID =Convert.ToInt32(Request.QueryString["id"].ToString());

           


            String CS = ConfigurationManager.ConnectionStrings["RoomMagnet"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select * from Accomodation where AccomodationID="+propertyID, con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        
                        DataTable properydata = new DataTable();
                        sda.Fill(properydata);

                        if (properydata.Rows.Count == 0)
                        {
                            return;
                        }

                        PropertyName.InnerText = "Property 1";
                        PropertySaleRent.InnerText = "For Rent";
                        PropertyPrice.InnerText = properydata.Rows[0]["Price"].ToString();
                        PropertyLocation.InnerText = properydata.Rows[0]["Zip"].ToString()+
                                                   " "+ properydata.Rows[0]["HouseNumber"].ToString()+
                                                   " " + properydata.Rows[0]["Street"].ToString()+
                                                     " " + properydata.Rows[0]["State"].ToString() +
                                                       " " + properydata.Rows[0]["Street"].ToString() +
                                                    ". " + properydata.Rows[0]["City"].ToString();

                        PropertyDes.InnerText = properydata.Rows[0]["Description"].ToString();
                      
                        byte[] bytes = (byte[])(properydata.Rows[0]["Image"]);
                        string strBase64 = Convert.ToBase64String(bytes);
                        string imagestring = "data:image/jpg;base64," + strBase64;

                        PropertyImage.Attributes["src"] = imagestring;

                   //     int amenityID =Convert.ToInt32(properydata.Rows[0]["City"]);

                        using (SqlConnection con1 = new SqlConnection(CS))
                        {
                            using (SqlCommand cmd1 = new SqlCommand("select * from Amenity where AccomodationID=" + propertyID, con1))
                            {
                                using (SqlDataAdapter sda1 = new SqlDataAdapter(cmd1))
                                {
                                    DataTable properydata1 = new DataTable();
                                    sda1.Fill(properydata1);

                                    if (properydata1.Rows.Count != 0)
                                    {
                                        string generatehtml = "";
                                        foreach (DataRow row in properydata1.Rows)
                                        {
                                            generatehtml = generatehtml + PropertyAmenities.InnerHtml + "<li><i class='fa fa-check'></i>" + row["AmenityName"].ToString() + "</li>";
                                        }


                                        PropertyAmenities.InnerHtml = generatehtml;

                                    }
                                  
                                }
                            }
                        }
                        
                        using (SqlConnection con2 = new SqlConnection(CS))
                        {
                            using (SqlCommand cmd2 = new SqlCommand("select * from RMUser where UserID=" + Convert.ToInt32(properydata.Rows[0]["HostID"]), con2))
                            {
                                using (SqlDataAdapter sda2 = new SqlDataAdapter(cmd2))
                                {
                                   
                                    DataTable properydata2 = new DataTable();
                                    try
                                    {
                                        sda2.Fill(properydata2);


                                        HostName.InnerText = properydata2.Rows[0]["FirstName"].ToString() + " "
                                            + properydata2.Rows[0]["LastName"].ToString();
                                        HostLocation.InnerText = properydata2.Rows[0]["State"].ToString() +

                                                        ". " + properydata2.Rows[0]["City"].ToString();
                                        HostPhone.InnerText = properydata2.Rows[0]["PhoneNumber"].ToString();
                                    }
                                    catch
                                    {
                                    }

                                }
                            }
                        }



                                }

                }
            }



          

        }

    }
}