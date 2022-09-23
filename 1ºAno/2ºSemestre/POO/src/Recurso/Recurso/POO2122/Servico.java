import java.util.*;

public abstract class Servico  {
    private String identificador;
    private int numero=999;
    
   
    public Servico(String identificador, int numero){
        this.identificador = identificador;
        this.numero = numero;
    }

    public String getIdentificador(){
        return this.identificador;
    }
    public int getNumero(){
        return this.numero;
    }
    




    public void setIdentificador(String identificador){
        this.identificador = identificador;
    }
    public void setPrice(int numero){
        this.numero = numero+1;
    }
   
}
