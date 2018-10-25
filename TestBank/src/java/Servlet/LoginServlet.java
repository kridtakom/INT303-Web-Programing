/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Jpa.Account;
import Model.Jpa.Controller.AccountJpaController;
import java.io.IOException;
import java.io.PrintWriter;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.UserTransaction;

/**
 *
 * @author Student
 */
public class LoginServlet extends HttpServlet {
   @Resource UserTransaction utx;
    @PersistenceUnit (unitName = "TestBankPU") EntityManagerFactory emf;
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
        HttpSession session = request.getSession();
        String idText = request.getParameter("id");
        String pinText = request.getParameter("pin");
        String status = null;

        if (idText != null && pinText != null) {
            int id = Integer.parseInt(idText);
            int pin = Integer.parseInt(pinText);
            AccountJpaController aJpaCtrl = new AccountJpaController(utx, emf);
            Account account = aJpaCtrl.findAccount(id);

            if (account != null) {
                if (pin == account.getPin()) {
                    session.setAttribute("account", account);
                    getServletContext().getRequestDispatcher("/MyAccount").forward(request, response);
                    return;
                }
                status = "pin invalid";
                request.setAttribute("status", status);
                getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
                return;
            } else {
                status = "id invalid";
                request.setAttribute("status", status);
                getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
                return;
            }

        }
        getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
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
