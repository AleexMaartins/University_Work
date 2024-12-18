package Aula08Novo;

public class Ex1PesadoPassageiros extends Ex1Veiculo{
    private String NrDoQuadro;
    private int peso;
    private int NrMaxDeLugares;

    public Ex1PesadoPassageiros(String matricula, String marca, String modelo, int potência, String NrDoQuadro, int peso, int NrMaxDeLugares) {
        super(matricula, marca, modelo, potência);
        this.NrDoQuadro = NrDoQuadro;
        this.peso = peso;
        this.NrMaxDeLugares = NrMaxDeLugares;
    }

    public String getNrDoQuadro() {
        return NrDoQuadro;
    }

    public void setNrDoQuadro(String NrDoQuadro) {
        this.NrDoQuadro = NrDoQuadro;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public int getNrMaxDeLugares() {
        return NrMaxDeLugares;
    }

    public void setNrMaxDeLugares(int nrMaxDeLugares) {
        NrMaxDeLugares = nrMaxDeLugares;
    }
    
}