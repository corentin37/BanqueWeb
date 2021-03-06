/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet;

import fr.solutec.dao.UserDao;
import fr.solutec.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Corentin
 */
@WebServlet(name = "AdminCreerConseillerServlet", urlPatterns = {"/creerConseiller"})
public class AdminCreerConseillerServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AdminCreerConseillerServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminCreerConseillerServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        HttpSession session = request.getSession();//on cr??e la session
        User u = (User)session.getAttribute("user");
        if(u!=null){
            
            try {
               List<User> users = UserDao.getAllPerson();
                request.setAttribute("conseillers", users);
               request.getRequestDispatcher("WEB-INF/Admin/creerConseiller.jsp").forward(request, response);
           } catch (Exception e) {
                PrintWriter out = response.getWriter();
                out.println(e.getMessage());
            }
            
        }
        else{
            request.setAttribute("msg", "veuillez vous connecter en tant qu'Admin");
        
        request.getRequestDispatcher("indexAdmin.jsp").forward(request, response);
        }
    
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
        HttpSession session = request.getSession();//on cr??e la session
        User u = (User)session.getAttribute("user");
        String name = request.getParameter("nom");
        String identifiant = request.getParameter("id");
        String mdp = request.getParameter("motPasse");
        String mail = request.getParameter("email");
        
       // User conseiller = new User(0,name,identifiant,mdp,mail); //si on met User en param??tre dans UserDao.insert();
        try {
            UserDao.insert(name, identifiant, mdp, mail);
            response.sendRedirect("creerConseiller");
        } catch (Exception e) {
               PrintWriter out = response.getWriter();
            out.println(e.getMessage());
        }
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
