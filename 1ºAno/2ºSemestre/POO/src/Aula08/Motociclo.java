package Aula08;

public class Motociclo extends Veiculo {
    private String tipo;

    Motociclo(String matricula, String marca, String modelo, int potencia, String tipo) {
        super(matricula, marca, modelo, potencia);
        this.tipo = tipo;
    }

    public String getTipo() {
        return this.tipo;
    }

    public void setTipo(String newTipo) {
        this.tipo = newTipo;
    }

}
