package Ex2;

public class Ex2Peixe extends Ex2Comida {
    private Ex2TipoPeixe tipo;

    public Ex2Peixe(Ex2TipoPeixe tipo, double proteinas, double calorias, double peso) {
        super(proteinas, calorias, peso);
        this.tipo = tipo;
    }

    @Override
    public String toString() {
        return "Peixe " + tipo + super.toString();
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((tipo == null) ? 0 : tipo.hashCode());
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
        Ex2Peixe other = (Ex2Peixe) obj;
        if (tipo != other.tipo)
            return false;
        return true;
    }

    public Ex2TipoPeixe getTipo() {
        return tipo;
    }

    public void setTipo(Ex2TipoPeixe tipo) {
        this.tipo = tipo;
    }

}