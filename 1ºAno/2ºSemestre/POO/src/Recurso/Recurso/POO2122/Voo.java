import java.time.LocalDate;

public class Voo extends Servico{ 

    public enum Classe{
        TURISTICA,EXECUTIVA,PRIMEIRA
    }
    private String identificador;
    private int numero;

    private String codigo;
    private LocalDate date;
    private Voo.Classe classe;


    public Voo(String codigo,LocalDate date,Voo.Classe classe){
        super(V, getNumero);
        this.codigo = codigo;
        this.date = date;
        this.classe = classe;
    }
    public int getNumero(){
        return this.numero;
    }
    public String getCodigo(){
        return this.codigo;
    }
    public LocalDate getDate(){
        return this.date;
    }
    public Voo.Classe getClasse(){
        return classe;
    }
    


    public void setNumero(int numero){
        this.numero = numero;
    }
    public void setCodigo(String codigo){
        this.codigo = codigo;
    }
    public void setDate(LocalDate date){
        this.date = date;
    }

    public void setOption(Voo.Classe classe){
        this.classe = classe;
    }



}

