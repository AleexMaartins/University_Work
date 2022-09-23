package ExamePratico;
import java.util.*;

public abstract class Atividade implements PontosDeInteresse{
    private int identificador, numlocais;
    private String nome;


    @Override
    public Collection<String> Locais() {
        // TODO Auto-generated method stub
        return null;
    }
    public int getIdentificador() {
        return identificador;
    }
    public String getNome() {
        return nome;
    }
    public int getNumlocais() {
        return numlocais;
    }
    public void setIdentificador(int identificador) {
        this.identificador = identificador;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public void setNumlocais(int numlocais) {
        this.numlocais = numlocais;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
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
        Atividade other = (Atividade) obj;
        if (nome == null) {
            if (other.nome != null)
                return false;
        } else if (!nome.equals(other.nome))
            return false;
        return true;
    }
}
