package ExamePratico;

public class Restaurante {
    private String nome;
    private TipoComida tipoComida;

    public Restaurante(String nome, TipoComida tipoComida){
        this.nome = nome;
        this.tipoComida = tipoComida;
    }

    public String getNome() {
        return nome;
    }
    public TipoComida getTipoComida() {
        return tipoComida;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public void setTipoComida(TipoComida tipoComida) {
        this.tipoComida = tipoComida;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((nome == null) ? 0 : nome.hashCode());
        result = prime * result + ((tipoComida == null) ? 0 : tipoComida.hashCode());
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
        Restaurante other = (Restaurante) obj;
        if (nome == null) {
            if (other.nome != null)
                return false;
        } else if (!nome.equals(other.nome))
            return false;
        if (tipoComida == null) {
            if (other.tipoComida != null)
                return false;
        } else if (!tipoComida.equals(other.tipoComida))
            return false;
        return true;
    }

    @Override 
    public String toString(){
        return "[nome=" + this.nome + ", tipo=" + this.tipoComida.toString() + "]";
    }
}
