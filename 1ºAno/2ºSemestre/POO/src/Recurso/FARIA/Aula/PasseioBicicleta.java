package ExamePratico;
import java.util.*;

public class PasseioBicicleta extends Atividade{
    private int numero;
    private String nome;
    private Set<String> conjuntoLocais;


    @Override
    public String toString(){
        return "Atividade [num=" + Integer.toString(this.numero) + ", nome=" + this.nome + "]";
    }

    public PasseioBicicleta(int numero, String nome, String[] conjuntoLocais){
        this.numero = numero;
        this.nome = nome;
        this.conjuntoLocais = new HashSet<>(Arrays.asList(conjuntoLocais));
    }
    public PasseioBicicleta(int numero, String nome, Set<String> conjuntoLocais){
        this.numero = numero;
        this.nome = nome;
        this.conjuntoLocais = conjuntoLocais;
        conjuntoLocais.forEach(e -> this.setNumlocais(this.getNumlocais()+1));
    }
    
    public PasseioBicicleta(int numero, String nome){
        this.numero = numero;
        this.nome = nome;
        this.conjuntoLocais = new HashSet<>();
    }

    public void addLocal(String local){
        this.conjuntoLocais.add(local);
        this.setNumlocais(this.getNumlocais()+1);
    }
    public String locais(){
        return this.conjuntoLocais.toString();
    }

    public String getNome() {
        return nome;
    }
    public int getNumero() {
        return numero;
    }
    public Set<String> getConjuntoLocais() {
        return conjuntoLocais;
    }

    public void setConjuntoLocais(Set<String> conjuntoLocais) {
        this.conjuntoLocais = conjuntoLocais;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public void setNumero(int numero) {
        this.numero = numero;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
        result = prime * result + ((conjuntoLocais == null) ? 0 : conjuntoLocais.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        PasseioBicicleta other = (PasseioBicicleta) obj;
        if (nome == null) {
            if (other.nome != null)
                return false;
        } else if (!nome.equals(other.nome))
            return false;
        if (conjuntoLocais == null) {
            if (other.conjuntoLocais != null)
                return false;
        } else if (!conjuntoLocais.equals(other.conjuntoLocais))
            return false;
        return true;
    }
}
