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

}
