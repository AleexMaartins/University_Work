import java.util.*;

public class PacoteTuristico  implements IPacoteTuristico{
    private String nome;
    private int nrNoites;
    private double preco;
   
    public PacoteTuristico(String nome, int nrNoites,double preco){
        this.nome = nome;
        this.nrNoites = nrNoites;
        this.preco = preco;
    }
}
