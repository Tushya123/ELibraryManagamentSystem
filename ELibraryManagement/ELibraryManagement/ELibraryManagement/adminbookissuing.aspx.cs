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
    public partial class adminbookissuing : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        // go button
        protected void Button1_Click(object sender, EventArgs e)
        {
            getNames();
        }
        //issue book
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckIfBookExists()&&CheckIfMemberExists())
            {
                if (CheckIfIsuueEntryExists())
                {
                    Response.Write("<script>alert('This Member Already has This Book')</script>");
                }
                else
                {
                    IssueBook();
                    GridView1.DataBind();

                }
              
            }
            else
            {
                Response.Write("<script>alert('Wrong Book ID or Member ID');</script>");
            }
        }
        //return book
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (CheckIfBookExists() && CheckIfMemberExists())
            {
                if (CheckIfIsuueEntryExists())
                {
                    ReturnBook();
                }
                else
                {
                    IssueBook();

                }

            }
            else
            {
                Response.Write("<script>alert('This Entry Does Not Exist');</script>");
            }

        }

        //user defined function
        void ReturnBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM book_issue_table WHERE book_id='" + TextBox1.Text.Trim() + "'AND member_id='"+TextBox2.Text.Trim()+"'", con);
                

                int result =cmd.ExecuteNonQuery();
                    
                if(result>0)
                {
                    cmd = new SqlCommand("UPDATE book_master_tbl SET current_stock=current_stock+1 WHERE book_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Book Returned Succesfully');</script>");
                    GridView1.DataBind();

                }
                else
                {
                    Response.Write("<script>alert('Error- Invalid Details')</script>");
                }
               


                
                

               
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void IssueBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO book_issue_table (member_id,member_name,book_id,book_name,issue_date,due_date) values(@member_id,@member_name,@book_id,@book_name,@issue_date,@due_date)", con);
                cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@issue_date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@due_date", TextBox6.Text.Trim());


                cmd.ExecuteNonQuery();
                cmd= new SqlCommand("UPDATE  book_master_tbl SET current_stock=current_stock-1 WHERE book_id='"+TextBox1.Text.Trim()+"'", con);
                
          
                cmd.ExecuteNonQuery ();
                con.Close();
                Response.Write("<script>alert('Book Issues Succesfully Succesfully');</script>");

                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        bool CheckIfBookExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from book_master_tbl WHERE book_id='" + TextBox1.Text.Trim() + "' AND current_stock>0", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;

                }
                else
                {
                    return false;
                }
                



            }
            catch
            {
                return false;

            }
                return false;
        }
        bool CheckIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from member_master_table WHERE member_id='" + TextBox2.Text.Trim()+  "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;

                }
                else
                {
                    return false;
                }
                



            }
            catch
            {
                return false;

            }
                return false;
        }
        bool CheckIfIsuueEntryExists()
        {
            
           
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from book_issue_table WHERE member_id='" + TextBox2.Text.Trim() + "' AND book_id='"+TextBox1.Text.Trim()+"' ", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count >= 1)
                    {
                        return true;

                    }
                    else
                    {
                        return false;
                    }




                }
                catch
                {
                    return false;

                }
                return false;
            }
        
        void getNames()
        {
            try
            {
                SqlConnection con = new  SqlConnection(strcon);
                if(con.State==ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT book_name from book_master_tbl WHERE book_id='" + TextBox1.Text.Trim()+"'",con);
                SqlDataAdapter da=new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1) {
                    TextBox4.Text = dt.Rows[0]["book_name"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Wrong Book ID')</script>");
                }
                cmd = new SqlCommand("SELECT full_name from member_master_table WHERE member_id='" + TextBox2.Text.Trim()+"'",con);
                 da=new SqlDataAdapter(cmd);
                 dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1) {
                    TextBox3.Text = dt.Rows[0]["full_name"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Wrong Book ID')</script>");
                }



            }
            catch
            {

            }
        }
         
    }
}