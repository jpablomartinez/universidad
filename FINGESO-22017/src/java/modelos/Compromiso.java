/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

/**
 *
 * @author JuanPablo
 */
public class Compromiso {
    String anno;
    String semestre;
    String nombreActividad;
    String horasSemanales;
    String horasSemestrales;
    String tipo;
    String comentario;
    
    public Compromiso(String n, String hs, String hss,String t,String a){
        this.nombreActividad = n;
        this.horasSemanales = hs;
        this.horasSemestrales = hss;
        this.tipo = t;
        this.anno = a;
    }

    public String getNombreActividad() {
        return nombreActividad;
    }

    public void setNombreActividad(String nombreActividad) {
        this.nombreActividad = nombreActividad;
    }

    public String getHorasSemanales() {
        return horasSemanales;
    }

    public void setHorasSemanales(String horasSemanales) {
        this.horasSemanales = horasSemanales;
    }

    public String getHorasSemestrales() {
        return horasSemestrales;
    }
    
    public String getAnno(){
        return this.anno;
    }
    
    public String getTipo(){
        return this.tipo;
    }

    public void setHorasSemestrales(String horasSemestrales) {
        this.horasSemestrales = horasSemestrales;
    }
    
    public void setComentario(String comentario){
        this.comentario = comentario;
    }
    
    public String getComentario(){
        return this.comentario;
    }
    
    
    
}
