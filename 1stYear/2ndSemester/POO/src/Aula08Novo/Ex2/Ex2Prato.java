package Ex2;

import java.util.ArrayList;
import java.util.List;

public class Ex2Prato implements Comparable<Ex2Prato> {
    private String nome;
    private List<Ex2Comida> composicao;

    public Ex2Prato(String nome) {
        this.nome = nome;
        composicao = new ArrayList<>();
    }

    public boolean addIngrediente(Ex2Comida a) {
        composicao.add(a);
        return true;
    }

    @Override
    public int compareTo(Ex2Prato p) {
        double caloriasDeste = 0;
        for (Ex2Comida alimento : composicao) {
            caloriasDeste += alimento.getCalorias();
        }
        double caloriasDoutro = 0;
        for (Ex2Comida alimento : p.getComposicao()) {
            caloriasDoutro += alimento.getCalorias();
        }

        if (caloriasDeste - caloriasDoutro > 0) {
            return 1;
        } else if (caloriasDeste - caloriasDoutro < 0) {
            return -1;
        }
        return 0;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((composicao == null) ? 0 : composicao.hashCode());
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
        Ex2Prato other = (Ex2Prato) obj;
        if (composicao == null) {
            if (other.composicao != null)
                return false;
        } else if (!composicao.equals(other.composicao))
            return false;
        if (nome == null) {
            if (other.nome != null)
                return false;
        } else if (!nome.equals(other.nome))
            return false;
        return true;
    }

    @Override
    public String toString() {
        return String.format("Prato '%s', composto por %d Ingredientes", nome, composicao.size());
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public List<Ex2Comida> getComposicao() {
        return composicao;
    }

    public void setComposicao(List<Ex2Comida> composicao) {
        this.composicao = composicao;
    }

}