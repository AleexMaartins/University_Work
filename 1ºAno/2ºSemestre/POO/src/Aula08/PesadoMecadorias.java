package Aula08;

public class PesadoMecadorias extends Pesado {
    private int cargaMaxima;

    PesadoMecadorias(String matricula, String marca, String modelo, int potencia, int nrQuadro, int peso,
            int cargaMaxima) {
        super(matricula, marca, modelo, potencia, nrQuadro, peso);
        this.cargaMaxima = cargaMaxima;
    }

    public int getCargaMaxima() {
        return this.cargaMaxima;
    }

    public void setCargaMaxima(int newCargaMaxima) {
        this.cargaMaxima = newCargaMaxima;
    }
    @Override
    public String toString() {
        return super.toString() + "PesadoMercadorias [cargaMaxima=" + cargaMaxima + "]";
    }
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + cargaMaxima;
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
        PesadoMecadorias other = (PesadoMecadorias) obj;
        if (cargaMaxima != other.cargaMaxima)
            return false;
        return super.equals(obj) && true;
    }
}
