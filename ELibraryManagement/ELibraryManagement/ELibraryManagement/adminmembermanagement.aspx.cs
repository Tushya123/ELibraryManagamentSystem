using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class adminmembermanagement : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            ClearForm();
           
        }
        //GO button
        protected void Button1_Click(object sender, EventArgs e)
        {
            GetMemberById();
           
        }
        // Succesful Button
        protected void Button4_Click(object sender, EventArgs e)
        {
            UpdateMemberStatusById("active");
            ClearForm();
            
        }
        //Pending Button
        protected void Button5_Click(object sender, EventArgs e)
        {
            UpdateMemberStatusById("pending");
            ClearForm();
            
        }
        //Deactivate button
        protected void Button6_Click(object sender, EventArgs e)
        {
            UpdateMemberStatusById("deactive");
            ClearForm();
            
        }

        // delete Button
        protected void Button2_Click(object sender, EventArgs e)
        {
            DeleteMemberById();
            ClearForm();
           
        }

        //user defined function
        bool checkifMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from member_master_table where member_id='" + TextBox1.Text.Trim() + "' ", con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }




            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;

            }

        }

        void GetMemberById()
        {
            try
            {
                SqlConnection con=new SqlConnection(strcon);
                if(con.State==ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from member_master_table where member_id='"+TextBox1.Text.Trim()+"'", con);
                SqlDataReader reader = cmd.ExecuteReader(); 
                if(reader.HasRows)
                {
                    while(reader.Read())
                    {
                        TextBox3.Text=reader.GetValue(0).ToString();
                        TextBox4.Text=reader.GetValue(10).ToString();
                        TextBox14.Text=reader.GetValue(1).ToString();
                        TextBox11.Text=reader.GetValue(2).ToString();
                        TextBox12.Text=reader.GetValue(3).ToString();
                        TextBox5.Text=reader.GetValue(4).ToString();
                        TextBox15.Text=reader.GetValue(5).ToString();
                       
                        TextBox16.Text=reader.GetValue(6).ToString();
                        TextBox8.Text=reader.GetValue(7).ToString();

                    }
                }

            }
            catch(Exception ex) {
                Response.Write(ex.Message);
            }
        }
        void UpdateMemberStatusById(string status)
        {
            if (checkifMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE member_master_table SET account_status='" + status + "'WHERE member_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Member Status Updated Succesfull')</script>");

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                Response.Write("<script>alert('Member ID cannot blank');</script>");
            }
           

        }
        void DeleteMemberById()
        {
            if(checkifMemberExists()) {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("DELETE from member_master_table WHERE member_id='" + TextBox1.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member Deleted Succesfully');</script>");
                    ClearForm();
                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
               

            }
            else
            {
                Response.Write("<script>alert('Member ID cannot be blank');</script>");
            }
            
        }
        void ClearForm()
        {
            //TextBox1.Text = "";//hampering with the code
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox8.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
        }

    }
}