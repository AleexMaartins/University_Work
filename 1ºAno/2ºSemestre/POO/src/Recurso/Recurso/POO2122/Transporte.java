import java.time.LocalDate;

public class Transporte extends Servico{ 

    public enum Combustivel{
        GASOLINA,GASOLEO,HIBRIDO,ELETRICO
    }
    private String identificador;
    private int numero;

    private int nrOcupantes;
    private int kmMax;
    private Transporte.Combustivel combustivel;
    
    
    

    public Transporte(int  nrOcupantes, int kmMax,  Transporte.Combustivel combustivel){
        super(T, getNumero);
        this.nrOcupantes = nrOcupantes;
        this.kmMax = kmMax;
        this.combustivel = combustivel;
    }

    public int getNumero(){
        return this.numero;
    }
    public int getNrOcupantes(){
        return this.nrOcupantes;
    }public int getKmMax(){
        return this.kmMax;
    }
    public Transporte.Combustivel getCombustivel(){
        return combustivel;
    }
    
    


    public void setNumero(int numero){
        this.numero = numero;
    }
    public void setNrOcupantes(int nrOcupantes){
        this.nrOcupantes = nrOcupantes;
    }
    public void setKmMax(int kmMax){
        this.kmMax = kmMax;
    }
    public void setOption(Transporte.Combustivel combustivel){
        this.combustivel = combustivel;
    }
}

