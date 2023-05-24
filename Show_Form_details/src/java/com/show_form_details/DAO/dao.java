package com.show_form_details.DAO;
import com.show_form_details.MODEL.bean;
import com.show_form_details.WEB.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;
import java.util.*;
public class dao 
{
    //Return type of this view method is the bean class as it returns bean class object
    public static bean view(bean b)
    {
        //boolean status=false;
        bean b1=new bean();
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String dbURL = "jdbc:mysql://localhost:3306/student";
            String username ="root";
            String password = "Preethaa@20";
            Connection dbCon = DriverManager.getConnection(dbURL, username, password);
            //Statement stmt = null;
            ResultSet rs = null;
            //String query ="select * from user1 where username=? and pwd=?";
            
            //String query="select * from student_table where Roll=?";
            String query="select * from student_table where Roll=? and Name=?";
            PreparedStatement ps=dbCon.prepareStatement(query);
            ps.setInt(1,b.getRoll());
            
            ps.setString(2,b.getName());
            //ps.setString(2,b.getName());
            rs=ps.executeQuery();
            //status=rs.next();
//object_of_bean_class.setter_method_of_bean_class(object_of_ResultSet.getter_method_of_bean_class("field_name_of_database"));
            if(rs.next())
            {
                b1.setRoll(rs.getInt("Roll"));           
                b1.setName(rs.getString("Name"));
                b1.setPhysics_marks(rs.getDouble("Physics_Marks"));
                b1.setChemistry_marks(rs.getDouble("Chemistry_Marks"));
                b1.setMaths_marks(rs.getDouble("Maths_Marks"));
                b1.setTotal_marks(rs.getDouble("Total_Marks"));
            }
            else
            {
                b1=null;
            }
            /*
            b1.setName(rs.getString("Name"));
            b1.setRoll(rs.getInt("Roll"));
            b1.setPhysics_marks(rs.getInt("Physics_Marks"));
            b1.setChemistry_marks(rs.getInt("Chemistry_Marks"));
            b1.setMaths_marks(rs.getInt("Maths_Marks"));
            b1.setTotal_marks(rs.getInt("Total_Marks"));
            */
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return b1;
        //return status;
    }
}
