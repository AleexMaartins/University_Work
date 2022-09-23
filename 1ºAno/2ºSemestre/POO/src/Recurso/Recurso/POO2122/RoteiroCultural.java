
public class RoteiroCultural extends Servico{ 

    
    private String identificador;
    private int numero;

    private String nome;
    private int nrLocais;
   
    

    public RoteiroCultural(String nome, int nrLocais){
        super(R, getNumero);
        this.nome = nome;
        this.nrLocais = nrLocais;
        
    }


    public int getNumero(){
        return this.numero;
    }
    public int getNome(){
        return this.nome;
    }


    
    public void setNumero(int numero){
        this.numero = numero;
    }
    public void setNome(String nome){
        this.nome = nome;
    }
}

