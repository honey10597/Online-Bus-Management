/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Routes;
import Model.RoutesDAO;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Honey
 */
public class UpdateRoute extends HttpServlet {

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
            throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String RouteNo = request.getParameter("route_no");
        String Bus_Number = request.getParameter("bus_number");
        String Route_Name = request.getParameter("route_name");
        String Driver_Name = request.getParameter("driver_name");
        String Contact_Number = request.getParameter("contact_no");
        
        Routes rts = new Routes();
        RoutesDAO rdao = new RoutesDAO();
        
        rts.setRouteno(RouteNo);
        rts.setBusnumber(Bus_Number);
        rts.setContactno(Contact_Number);
        rts.setDrivername(Driver_Name);
        rts.setRoutename(Route_Name);
        
        Configuration cf = null;
        SessionFactory sf = null;
        Session session = null;
         try{
            cf = new Configuration();
            cf.configure("hibercfg/hibernate.cfg.xml");
            sf = cf.buildSessionFactory();
            session = sf.openSession();
            Transaction tx = session.beginTransaction();
            Query query = session.createQuery("update Routes set busnumber= :a,contactno= :b,drivername= :c,routename= :d where routeno= :x");

            query.setParameter("x",RouteNo);
            query.setParameter("a",Bus_Number);
            query.setParameter("b",Contact_Number);
            query.setParameter("c",Driver_Name);
            query.setParameter("d",Route_Name);
            
            query.executeUpdate();

            out.println(RouteNo+" "+Bus_Number+" "+Route_Name+" "+Driver_Name+" "+Contact_Number);
            tx.commit();
            RequestDispatcher rd = request.getRequestDispatcher("home_viewall.jsp");
            rd.forward(request, response);
                       
        }catch(HibernateException exp)
        {
            exp.printStackTrace();
        }
        finally{
             session.close();
            sf.close(); 
         }   
        }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
            throws ServletException, IOException {
        processRequest(request, response);
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
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
