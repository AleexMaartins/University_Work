package Ex2;

public class Ex2Cereal extends Ex2ComidaVegetariano {
    private String nome;

    public Ex2Cereal(String nome, double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);
        this.nome = nome;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (!super.equals(obj))
            return false;
        if (getClass() != obj.getClass())
            return false;
        Ex2Cereal other = (Ex2Cereal) obj;
        if (nome == null) {
            if (other.nome != null)
                return false;
        } else if (!nome.equals(other.nome))
            return false;
        return true;
    }

    @Override
    public String toString() {
        return "Cereal " + nome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

}
//tem nome (String), proteínas (double), calorias (double), peso (double). É um alimento vegetariano.