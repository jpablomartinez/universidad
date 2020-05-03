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
public class Actividad {
    int semester;
    String activity;
    float weekly_hours;
    float semester_hours;
    
    public void set_semester(int s){
        this.semester = s;
    }
    
    public void set_activity(String a){
        this.activity = a;
    }
    
    public void set_weekly_hours(float w){
        this.weekly_hours = w;
    }
    
    public void set_semester_hours(float s){
        this.semester_hours = s;
    }
    
    public int get_semester(){
        return this.semester;
    }
    
    public String get_activity(){
        return this.activity;
    }
    
    public float get_weekly_hours(){
        return this.weekly_hours;
    }
    
    public float get_semester_hours(){
        return this.semester_hours;
    }
}
