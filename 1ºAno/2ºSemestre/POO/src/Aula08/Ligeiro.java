package Aula08;

abstract class Ligeiro extends Veiculo {
    private int nrQuadro;
    private int capBagageira;

    Ligeiro(String matricula, String marca, String modelo, int potencia, int nrQuadro, int capBagageira) {
        super(matricula, marca, modelo, potencia);
        this.nrQuadro = nrQuadro;
        this.capBagageira = capBagageira;
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

}
