/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author JuanPablo
 */
public class Academico {
    String first_name;
    String last_name;
    String cargo;
    String email;                         
    String grade;
    ArrayList<Compromiso> compromiso;
    
    public Academico(String f, String l, String c, String e,String g){
        this.first_name = f;
        this.last_name = l;
        this.grade = g;
        this.cargo = c;
        this.email = e;
    }
    
    public void set_first_name(String name){
        this.first_name = name;
    }
    
    public void set_last_name(String last){
        this.last_name = last;
    }
    
    public void set_compromiso(Compromiso c){
        this.compromiso.add(c);
    }
    
    public String get_first_name(){
        return this.first_name;
    }
    
    public String get_last_name(){
        return this.last_name;
    }
    
    public String get_grade(){
        return this.grade;
    }
    
    public String get_email(){
        return this.email;
    }
    
    public String get_cargo(){
        return this.cargo;
    }
    
    public Compromiso get_compromiso(int index){
        return this.compromiso.get(index);
    }
    
    
    
}
