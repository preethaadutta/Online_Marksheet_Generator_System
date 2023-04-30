package com.show_form_details.WEB;
import com.show_form_details.MODEL.bean;
import com.show_form_details.DAO.dao;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*@WebServlet("/marksheet")*/
public class servlet extends HttpServlet
{
    private dao d;
    public void init()
    {
        d=new dao();
    }
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) 
        {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet view</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet view at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
        /*
        int roll = Integer.parseInt(request.getParameter("roll"));//converts string to int
        String name = request.getParameter("name");
        bean b=new bean();
        b.setRoll(roll);
        //b.setName(name);
        try
        {
            if(dao.validate(b))
            {
               response.sendRedirect("show_marksheet.jsp");
            }
            else
            {
                response.sendRedirect("show_error.jsp");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        */
        
    }
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {
        /*
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int i=Integer.parseInt(request.getParameter("roll"));
        bean b=new bean();
        b.setRoll(Integer.parseInt(request.getParameter("roll")));
        try
        {
            bean b2=dao.view(b);
            if(b2!=null)
            {
                request.setAttribute("data1", b2);
                RequestDispatcher rd = request.getRequestDispatcher("show_marksheet.jsp");
                rd.forward(request, response);
            }
            else
            {
                response.sendRedirect("show_error.jsp");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        processRequest(request, response);
        */
    }
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
    */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int i=Integer.parseInt(request.getParameter("roll"));
        bean b=new bean();
        b.setRoll(Integer.parseInt(request.getParameter("roll")));
        b.setName(request.getParameter("name"));
        try
        {
            bean b2=dao.view(b);
            if(b2!=null)
            {
                request.setAttribute("data1", b2);
                RequestDispatcher rd = request.getRequestDispatcher("show_marksheet.jsp");
                rd.forward(request, response);
            }
            else
            {
                response.sendRedirect("show_error.jsp");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        processRequest(request, response);
        // processRequest(request, response);
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() 
    {
        return "Short description";
    }// </editor-fold>
}
