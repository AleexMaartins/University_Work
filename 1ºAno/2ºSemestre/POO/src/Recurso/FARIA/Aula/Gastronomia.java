package ExamePratico;

import java.util.*;

public class Gastronomia extends Atividade {
    private int numero;
    private String nome;
    private List<Restaurante> conjuntoRestaurantes;

    public Gastronomia(int numero, String nome){
        this.numero = numero;
        this.nome = nome;
        this.conjuntoRestaurantes = new ArrayList<>();
    }
    public Gastronomia(int numero, String nome, List<Restaurante> conjuntoRestaurantes){
        this.numero = numero;
        this.nome = nome;
        this.conjuntoRestaurantes = conjuntoRestaurantes;
        conjuntoRestaurantes.forEach(e -> this.setNumlocais(this.getNumlocais()+1));
    }
    
    @Override
    public String toString(){
        return "Atividade [num=" + Integer.toString(this.numero) + ", nome=" + this.nome + "]";
    }
    

    public void add(Restaurante r){
        this.conjuntoRestaurantes.add(r);
        this.setNumlocais(this.getNumlocais()+1);
    }
    public List<Restaurante> getLista() {
        return conjuntoRestaurantes;
    }
    public int totalRestaurantes(){
        return this.conjuntoRestaurantes.size();
    }
    public String locais(){
        ArrayList<String> response = new ArrayList<>();
        for (Restaurante r : conjuntoRestaurantes){
            response.add("Restaurante " + r.toString());
        }
        return response.toString();
    }
    
    public String getNome() {
        return nome;
    }
    public int getNumero() {
        return numero;
    }
    public List<Restaurante> getConjuntoRestaurantes() {
        return conjuntoRestaurantes;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public void setNumero(int numero) {
        this.numero = numero;
    }
    public void setConjuntoRestaurantes(List<Restaurante> conjuntoRestaurantes) {
        this.conjuntoRestaurantes = conjuntoRestaurantes;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
        result = prime * result + ((conjuntoRestaurantes == null) ? 0 : conjuntoRestaurantes.hashCode());
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
        Gastronomia other = (Gastronomia) obj;
        if (nome == null) {
            if (other.nome != null)
                return false;
        } else if (!nome.equals(other.nome))
            return false;
        if (conjuntoRestaurantes == null) {
            if (other.conjuntoRestaurantes != null)
                return false;
        } else if (!conjuntoRestaurantes.equals(other.conjuntoRestaurantes))
            return false;
        return true;
    }

}
