/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import modelos.Academico;
import modelos.Compromiso;

/**
 *
 * @author JuanPablo
 */
public class Controlador_Compromiso {
    
    public void crearCompromiso(ArrayList<Compromiso> compromisos,String nombre,String date,String tipo) throws IOException
    {
        FileWriter file = new FileWriter("C:\\Users\\JuanPablo\\Desktop\\FINGESO\\FINGESO_22017\\web\\"+nombre+"_Compromiso_"+tipo+"_"+date+".txt");
        PrintWriter pw = new PrintWriter(file);
        for (Compromiso comp : compromisos) {
            pw.println(comp.getNombreActividad()+";"+comp.getHorasSemanales()+";"+comp.getHorasSemestrales()+";"+comp.getTipo()+";"+comp.getAnno());
        }
        file.close();
    }
    
    public void comentarCompromiso(String nombreArchivo, String comentarios) throws IOException
    {
        try (FileWriter file = new FileWriter("C:\\Users\\JuanPablo\\Desktop\\FINGESO\\FINGESO_22017\\web\\"+nombreArchivo+".txt")) {
            PrintWriter pw = new PrintWriter(file);
            pw.println(comentarios);
            file.close();
        }
    }
    
}
