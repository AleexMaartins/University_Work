package Aula08;

abstract class Pesado extends Veiculo {
    private int nrQuadro;
    private int peso;

    Pesado(String matricula, String marca, String modelo, int potencia, int nrQuadro, int peso) {
        super(matricula, marca, modelo, potencia);
        this.nrQuadro = nrQuadro;
        this.peso = peso;
    }

    public int getNrQuadro() {
        return this.nrQuadro;
    }

    public int getPeso() {
        return this.peso;
    }

    public void setNrQuadro(int newNrQuadro) {
        this.nrQuadro = newNrQuadro;
    }

    public void setPeso(int newPeso) {
        this.peso = newPeso;
    }
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + nrQuadro;
        result = prime * result + peso;
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
        Pesado other = (Pesado) obj;
        if (nrQuadro != other.nrQuadro)
            return false;
        if (peso != other.peso)
            return false;
        return super.equals(obj) && true;
    }

}
