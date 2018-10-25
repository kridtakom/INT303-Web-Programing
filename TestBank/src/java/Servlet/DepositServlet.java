/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Jpa.Account;
import Model.Jpa.Controller.AccountJpaController;
import Model.Jpa.Controller.HistoryJpaController;
import Model.Jpa.Controller.exceptions.NonexistentEntityException;
import Model.Jpa.Controller.exceptions.RollbackFailureException;
import Model.Jpa.History;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.persistence.EntityManager;
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
public class DepositServlet extends HttpServlet {

    @Resource
    UserTransaction utx;
    @PersistenceUnit(unitName = "TestBankPU")
    EntityManagerFactory emf;

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
        Account ac = (Account) session.getAttribute("account");
        String depoText = request.getParameter("deposit");
        String status = null;

        if (depoText != null) {
            AccountJpaController aJpaCtrl = new AccountJpaController(utx, emf);
            Account account = aJpaCtrl.findAccount(ac.getAccountid());

            if (account != null) {
                int deposit = Integer.parseInt(depoText);
                boolean methodDeposit = account.accountDeposit(deposit);

                if (methodDeposit) {
                    HistoryJpaController hJpaCtrl = new HistoryJpaController(utx, emf);
                    History history = new History(account,"deposit", deposit, new Date(), account.getBalance());
                    try {
                        aJpaCtrl.edit(account);
                        hJpaCtrl.create(history);
                        status = "Deposit Successful";
                        session.setAttribute("account", account);
                    } catch (NonexistentEntityException ex) {
                        Logger.getLogger(DepositServlet.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (RollbackFailureException ex) {
                        Logger.getLogger(DepositServlet.class.getName()).log(Level.SEVERE, null, ex);
                    } catch (Exception ex) {
                        Logger.getLogger(DepositServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }else{
                    status = "Deposit Unsuccessful";
                }
                session.setAttribute("status", status);
                response.sendRedirect("MyAccount");
                return;
            }
            getServletContext().getRequestDispatcher("/index.html").forward(request, response);
            return;
        }
        getServletContext().getRequestDispatcher("/Deposit.jsp").forward(request, response);
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
