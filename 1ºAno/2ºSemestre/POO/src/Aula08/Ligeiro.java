package Aula08;

public class Ligeiro extends Veiculo {
    private int nrQuadro;
    private int capBagageira;

    Ligeiro(String matricula, String marca, String modelo, int potencia, int nrQuadro, int capBagageira) {
        super(matricula, marca, modelo, potencia);
        this.nrQuadro = nrQuadro;
        this.capBagageira = capBagageira;
    }
    @Override
    public String toString() {
        return super.toString() + "Ligeiro [capacidadeBagageira=" + capBagageira + ", numQuadro=" + nrQuadro
                + "] ";
    }
    public int getNrQuadro() {
        return this.nrQuadro;
    }

    public int getCapBagageira() {
        return this.capBagageira;
    }

    public void setNrQuadro(int newNrQuadro) {
        this.nrQuadro = newNrQuadro;
    }

    public void setCapBagageira(int newCapBagageira) {
        this.capBagageira = newCapBagageira;
    }
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + capBagageira;
        result = prime * result + nrQuadro;
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
        Ligeiro other = (Ligeiro) obj;
        if (capBagageira != other.capBagageira)
            return false;
        if (nrQuadro != other.nrQuadro)
            return false;
        return super.equals(obj) && true;
    }
}
