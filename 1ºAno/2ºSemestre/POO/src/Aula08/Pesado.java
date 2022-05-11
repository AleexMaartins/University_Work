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

}
