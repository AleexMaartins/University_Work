package Aula08;

public class Taxi extends Ligeiro {
    private int nrLicenca;

    Taxi(String matricula, String marca, String modelo, int potencia, int nrQuadro, int capBagageira, int nrLicenca) {
        super(matricula, marca, modelo, potencia, nrQuadro, capBagageira);
        this.nrLicenca = nrLicenca;
    }

    public int getNrLicenca() {
        return this.nrLicenca;
    }

    public void setNrLicenca(int newNrLicenca) {
        this.nrLicenca = newNrLicenca;
    }

}
