
public class Alojamento extends Servico{ 

    public enum Regime{
        PEQUENOALMOCO, MEIAPENSAO,PENSAOCOMPLETA,TUDOINCULIDO
    }
    private String identificador;
    private int numero;

    private String nome;
    private int nrQuartos;
    private int ocupacaoMax;
    private Alojamento.Regime regime;
    

    public Alojamento(String nome, int nrQuartos, int ocupacaoMax, Alojamento.Regime regime){
        super(A, getNumero);
        this.nome = nome;
        this.nrQuartos = nrQuartos;
        this.ocupacaoMax = ocupacaoMax;
        this.regime = regime;
    }


    public int getNumero(){
        return this.numero;
    }
    public int getNome(){
        return this.nome;
    }
    public int getNrQuartos(){
        return this.nrQuartos;
    }public int getOcupacaoMax(){
        return this.ocupacaoMax;
    }
    public Alojamento.Regime getRegime(){
        return regime;
        
    }


    
    public void setNumero(int numero){
        this.numero = numero;
    }
    public void setNome(String nome){
        this.nome = nome;
    }
    public void setNrQuartos(int nrQuartos){
        this.nrQuartos = nrQuartos;
    }
    public void setOcupacaoMax(int ocupacaoMax){
        this.ocupacaoMax = ocupacaoMax;
    }
    public void setOption(Alojamento.Regime regime){
        this.regime = regime;
    }
}

