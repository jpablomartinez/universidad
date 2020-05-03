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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelos.Academico;
import modelos.Compromiso;
import modelos.Docencia;
import sun.rmi.runtime.Log;

/**
 *
 * @author JuanPablo
 */
public class DocenciaServlet extends HttpServlet {

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
        if(request.getParameter("btnGuardar")!=null){
            ArrayList<Compromiso> compromisos = new ArrayList();
            String anno = request.getParameter("anno");
            String[] cursos = request.getParameterValues("nombre[]");
            String[] hsemanales = request.getParameterValues("hsemanal[]");
            String[] hsemestrales = request.getParameterValues("hsemestral[]");
          
            for(int i = 0; i < cursos.length; i++){
                Compromiso c = new Compromiso(cursos[i],hsemanales[i],hsemestrales[i],"Docencia",anno);
                compromisos.add(c);
            }
            Controlador_Compromiso cc = new Controlador_Compromiso();
            Object o = session.getAttribute("user");
            String a = (String) o;
            cc.crearCompromiso(compromisos,a,"Docente",anno);
            response.sendRedirect("academic.jsp");
        }
    }
    
     private static final Logger LOG = Logger.getLogger(DocenciaServlet.class.getName());

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
