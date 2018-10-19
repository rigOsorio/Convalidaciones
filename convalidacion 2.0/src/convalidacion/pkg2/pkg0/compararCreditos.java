/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package convalidacion.pkg2.pkg0;

/**
 *
 * @author Alumno
 */
public class compararCreditos {
    private String sistema;
    private int creditos;
   
    compararCreditos(String sistema, int cred){
        this.sistema=sistema;
        this.creditos=cred;
    }
    
    //compara los creditos y el sistema de medida
    public boolean Verificacion(){
        if(this.sistema.equals("ECTS")||this.sistema.equals("ects")&&this.creditos>6)
            return true;
        return false;
    }
    
    //compara los creditos y el sistema de medida para el trabajo de fin de grado
    public boolean VerificacionFin(){
        if(this.sistema.equals("ECTS")||this.sistema.equals("ects")&&this.creditos>12)
            return true;
        return false;
    }
}
