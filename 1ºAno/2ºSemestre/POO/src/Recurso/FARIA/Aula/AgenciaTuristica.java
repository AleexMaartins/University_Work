package ExamePratico;
import java.util.*;

public class AgenciaTuristica {
    private String nome, endereco;
    private Set<Atividade> conjuntoAtividades;

    public AgenciaTuristica(String nome, String endereco){
        this.nome = nome;
        this.endereco = endereco;
        this.conjuntoAtividades = new HashSet<>();
    }

    public void add(Atividade atividade){
        this.conjuntoAtividades.add(atividade);
        
    }
    public int totalItems(){
        int response = 0;
        for (Atividade atividade : conjuntoAtividades){
            response = response + atividade.getNumlocais();
        }
        return response;
    }
    public Set<Atividade> atividades(){
        return this.conjuntoAtividades;
    }
    public Set<String> getAllItems(){
        Set<String> sortedSetAtividades = new TreeSet<>();
        for (Atividade atividade : conjuntoAtividades){
            sortedSetAtividades.add(atividade.getNome());
        }
        return sortedSetAtividades;
    }

    @Override
    public String toString(){
        return nome + "\nAtividades: " + conjuntoAtividades;
    }

    public Set<Atividade> getConjuntoAtividades() {
        return conjuntoAtividades;
    }
    public String getEndereco() {
        return endereco;
    }
    public String getNome() {
        return nome;
    }
    public void setConjuntoAtividades(Set<Atividade> conjuntoAtividades) {
        this.conjuntoAtividades = conjuntoAtividades;
    }
    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
        result = prime * result + ((endereco == null) ? 0 : endereco.hashCode());
        result = prime * result + ((conjuntoAtividades == null) ? 0 : conjuntoAtividades.hashCode());
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
        AgenciaTuristica other = (AgenciaTuristica) obj;
        if (nome == null) {
            if (other.nome != null)
                return false;
        } else if (!nome.equals(other.nome))
            return false;
        if (endereco == null) {
            if (other.endereco != null)
                return false;
        } else if (!endereco.equals(other.endereco))
            return false;
        if (conjuntoAtividades == null) {
            if (other.conjuntoAtividades != null)
                return false;
        } else if (!conjuntoAtividades.equals(other.conjuntoAtividades))
            return false;    
        return true;
    }
}
