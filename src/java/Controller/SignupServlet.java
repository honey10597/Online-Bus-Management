/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.login;
import Model.signupdate;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Honey
 */
public class SignupServlet extends HttpServlet {

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
        PrintWriter out=response.getWriter();
        
        String Name = request.getParameter("name");
        String Email = request.getParameter("email");
        String Password = request.getParameter("password");
        String ConfirmPassword = request.getParameter("cpassword");
        String User = request.getParameter("select_box");
        
        HttpSession session = request.getSession(true);
        
        login l = new login();
        
        l.setName(Name);
        l.setEmail(Email);
        l.setPassword(Password);
        l.setUser(User);
        
        signupdate su = new signupdate();
        
        out.println(Name+" "+Email+" "+Password+" "+ConfirmPassword+" "+User);      
        
        if(Password.equals(ConfirmPassword))
        {
            su.update(Name,Email,Password,User);
            out.println("<script>");
            out.println("location='home_admin.jsp';");
            out.println("alert('Successfully Registered');");
            out.println("</script>");
//            response.sendRedirect("home_admin.jsp");
        }else{
//            response.sendRedirect("signup.jsp?X=1");
            out.println("<script>");
            out.println("location='signup.jsp';");
            out.println("alert('Password did not match');");
            out.println("</script>");
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
