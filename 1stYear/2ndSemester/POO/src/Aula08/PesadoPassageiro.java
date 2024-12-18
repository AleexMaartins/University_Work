package Aula08;

public class PesadoPassageiro extends Pesado {
    private int maxPassageiros;

    PesadoPassageiro(String matricula, String marca, String modelo, int potencia, int nrQuadro, int peso,
            int maxPassageiros) {
        super(matricula, marca, modelo, potencia, nrQuadro, peso);
        this.maxPassageiros = maxPassageiros;
    }

    public int getMaxPassageiros() {
        return this.maxPassageiros;
    }

    public void setMaxPassageiros(int newMaxPassageiros) {
        this.maxPassageiros = newMaxPassageiros;
    }
    @Override
    public String toString() {
        return super.toString() + "PesadoPassageiros [maxPassageiros=" + maxPassageiros + "]";
    }
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + maxPassageiros;
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
        PesadoPassageiro other = (PesadoPassageiro) obj;
        if (maxPassageiros != other.maxPassageiros)
            return false;
        return super.equals(obj) && true;
    }
}
