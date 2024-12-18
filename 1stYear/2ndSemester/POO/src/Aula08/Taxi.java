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
    @Override
    public String toString() {
        return super.toString() + "Taxi [numLicense=" + nrLicenca + "]";
    }
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = super.hashCode();
        result = prime * result + nrLicenca;
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
        Taxi other = (Taxi) obj;
        if (nrLicenca != other.nrLicenca)
            return false;
        return super.equals(obj) && true;
    }
}
