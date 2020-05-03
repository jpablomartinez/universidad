/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Stream;
import modelos.Academico;
import modelos.Compromiso;

/**
 *
 * @author JuanPablo
 */
public class Controlador_usuario {
    
    public ArrayList<Academico> read_file() throws FileNotFoundException, IOException
    {
        ArrayList<Academico> academicos = new ArrayList<>();
        String cadena;
        FileReader file = new FileReader("C:\\Users\\JuanPablo\\Desktop\\FINGESO\\FINGESO_22017\\web\\academicos.txt");
        BufferedReader b = new BufferedReader(file);
        while((cadena = b.readLine())!=null){
            String[] aux = cadena.trim().split(";");
            Academico a = new Academico(aux[0],aux[1],aux[2],aux[3],aux[4]);
            academicos.add(a);
        }
        file.close();
        return (ArrayList) (academicos);
    }
    
    public int login(String correo, ArrayList<Academico> academicos)
    {
        for(int i = 0; i < academicos.size();i++){
            if(correo.equals(academicos.get(i).get_email()))
                return i;
        }
        return -1;
    }
    
    public ArrayList<Compromiso> obtenerCompromisos(String nombreArchivo) throws FileNotFoundException, IOException
    {
        ArrayList<Compromiso> compromisos = new ArrayList();
        String cadena;
        FileReader file = new FileReader("C:\\Users\\JuanPablo\\Desktop\\FINGESO\\FINGESO_22017\\web\\"+nombreArchivo+".txt");
        BufferedReader b = new BufferedReader(file);
        while((cadena = b.readLine())!=null){
            String[] aux = cadena.trim().split(";");
            Compromiso c = new Compromiso(aux[0],aux[1],aux[2],aux[3],aux[4]);
            compromisos.add(c);
        }
        file.close();
        return (ArrayList) (compromisos);
    }
    
    public ArrayList<String> obtenerCompromisoComentado(String nombreArchivo) throws FileNotFoundException, IOException
    {
        ArrayList<String> comentarios = new ArrayList();
        String cadena;
        String aux;
        FileReader file = new FileReader("C:\\Users\\JuanPablo\\Desktop\\FINGESO\\FINGESO_22017\\web\\"+nombreArchivo+".txt");
        BufferedReader b = new BufferedReader(file);
        while((cadena = b.readLine())!=null){
            aux = cadena.trim();
            comentarios.add(aux);
        }
        file.close();
        return (ArrayList) (comentarios);
    }
    
    
}
