package com.show_form_details.MODEL;
import com.show_form_details.DAO.dao;
import com.show_form_details.WEB.servlet;

public class bean 
{
    private int roll;
    private String name;//private because without using object of this class no one can access this field
    private double phy_marks;
    private double chem_marks;
    private double maths_marks;
    private double total_marks;
    
    //setter methods of all fields available in database
    public void setRoll(int roll)
    {
        this.roll=roll;
    }
    public void setName(String name)
    {
        this.name=name;
    }
    public void setPhysics_marks(double phy_marks)
    {
        this.phy_marks=phy_marks;
    }
    public void setChemistry_marks(double chem_marks)
    {
        this.chem_marks=chem_marks;
    }
    public void setMaths_marks(double maths_marks)
    {
        this.maths_marks=maths_marks;
    }
    public void setTotal_marks(double total_marks)
    {
        this.total_marks=total_marks;
    }
    
    //getter methods of all fields available in database
    public int getRoll()
    {
        return roll;
    }
    public String getName()
    {
        return name;
    }
    public double getPhysics_marks()
    {
        return phy_marks;
    }
    public double getChemistry_marks()
    {
        return chem_marks;
    }
    public double getMaths_marks()
    {
        return maths_marks;
    }
    public double getTotal_marks()
    {
        return total_marks;
    }
    
    /*
    //setter methods of all fields available in database
    public void setRoll(int roll)
    {
        this.roll=roll;
    }
    public void setName(String name)
    {
        this.name=name;
    }
    public void setPhysics_marks(int phy_marks)
    {
        this.phy_marks=phy_marks;
    }
    public void setChemistry_marks(int chem_marks)
    {
        this.chem_marks=chem_marks;
    }
    public void setMaths_marks(int maths_marks)
    {
        this.maths_marks=maths_marks;
    }
    public void setTotal_marks(int total_marks)
    {
        this.total_marks=total_marks;
    }
   */
}
