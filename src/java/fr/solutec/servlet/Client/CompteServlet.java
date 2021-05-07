/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.solutec.servlet.Client;

import fr.solutec.dao.CompteDao;
import fr.solutec.model.Compte;
import fr.solutec.model.User;
import fr.solutec.servlet.HomeServletClient;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Floriane Richard
 */
@WebServlet(name = "CompteServlet", urlPatterns = {"/compte"})
public class CompteServlet extends HttpServlet {

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
            out.println("<title>Servlet CompteServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CompteServlet at " + request.getContextPath() + "</h1>");
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
        
         HttpSession session = request.getSession();
         User u = (User) session.getAttribute("user");
                if(u!=null){
                    request.setAttribute("nomClient", u.getNom());
                    request.setAttribute("loginClient",u.getLogin());
                    request.setAttribute("mailClient", u.getMail());
                    request.setAttribute("mdp", u.getMdp());
                    Compte c = new Compte();
             try {
                 c = CompteDao.getOneCompte(u);
             } catch (SQLException ex) {
                 Logger.getLogger(HomeServletClient.class.getName()).log(Level.SEVERE, null, ex);
             }
                    request.setAttribute("solde", c.getSolde() );
                    
                    request.getRequestDispatcher("WEB-INF/Client/compte.jsp").forward(request, response);
                }
                else {
                    request.setAttribute("msg", "Veuillez vous connecter");
                    request.getRequestDispatcher("indexUser.jsp").forward(request, response);
                }
        request.getRequestDispatcher("WEB-INF/Client/compte.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("user");
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
