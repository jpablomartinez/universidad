/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelos.Academico;

/**
 *
 * @author JuanPablo
 */
@WebServlet (name = "IniciarSesionServlet",urlPatterns = {"/IniciarSesionServlet"})
public class IniciarSesionServlet extends HttpServlet {

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
        Controlador_usuario userController = new Controlador_usuario();
        ArrayList<Academico> academicos = new ArrayList<>();
        academicos = userController.read_file();
        Academico usuario = null;
        if(request.getParameter("btn_login")!=null){
            String email = request.getParameter("correo");
            int aux = userController.login(email, academicos);
            if(aux == -1){
                LOG.log(Level.INFO,"Error");
                response.sendRedirect("login.jsp");
            }
            else{
                usuario  = academicos.get(aux);
                if(usuario.get_cargo().equals("Academico")){
                //session.setAttribute("user", usuario);
                session.setAttribute("user",usuario.get_first_name()+" "+usuario.get_last_name());
                response.sendRedirect("academic.jsp");
                }
                else if(aux > 1 && usuario.get_cargo().equals("Director")){
                session.setAttribute("user",usuario.get_first_name()+" " + usuario.get_last_name());
                response.sendRedirect("director.jsp");
                }

            }
        }
    }
    private static final Logger LOG = Logger.getLogger(IniciarSesionServlet.class.getName());

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
