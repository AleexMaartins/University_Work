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

}
