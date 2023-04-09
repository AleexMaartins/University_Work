package Aula08Novo;

public class Ex1Motociclo extends Ex1Veiculo{
    private String tipo;

    public Ex1Motociclo(String matricula, String marca, String modelo, int potência, String tipo) {
        super(matricula, marca, modelo, potência);
        this.tipo = tipo; //desportivo ou estrada

        System.out.println("Motociclo criado");
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }


}
