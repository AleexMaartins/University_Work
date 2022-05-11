package Aula08;

abstract class Veiculo implements KmPercorridosInterface {
    private String matricula;
    private String marca;
    private String modelo;
    private int potencia;
    private int ultimaViagem;// nr de km percorridos na ultima viagem
    private int total;// nr de km percorridos no total

    Veiculo(String matricula, String marca, String modelo,
            int potencia) {
        this.matricula = matricula;
        this.marca = marca;
        this.modelo = modelo;
        this.potencia = potencia;
        this.ultimaViagem = 0;

    }

    public String getMatricula() {
        return this.matricula;
    }

    public String getMarca() {
        return this.marca;
    }

    public String getModelo() {
        return this.modelo;
    }

    public int getPotencia() {
        return this.potencia;
    }

    public void trajeto(int ultimaViagem) {
        this.total += ultimaViagem;
        this.ultimaViagem = ultimaViagem;
    }

    public int ultimoTrajeto() {
        return this.ultimaViagem;
    }

    public int distanciaTotal() {
        return this.total;
    }

}
