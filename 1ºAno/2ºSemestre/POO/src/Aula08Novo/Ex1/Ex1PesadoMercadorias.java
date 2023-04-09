package Aula08Novo;

public class Ex1PesadoMercadorias extends Ex1Veiculo{
    private int peso;
    private String NrDoQuadro;
    private int cargaMaxima;
    
    public Ex1PesadoMercadorias(String matricula, String marca, String modelo, int potência, String NrDoQuadro,int peso, int cargaMaxima) {
        super(matricula, marca, modelo, potência);
        this.NrDoQuadro = NrDoQuadro;
        this.peso = peso;
        this.cargaMaxima = cargaMaxima;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public String getNrDoQuadro() {
        return NrDoQuadro;
    }

    public void setNrDoQuadro(String NrDoQuadro) {
        this.NrDoQuadro = NrDoQuadro;
    }

    public int getCargaMaxima() {
        return cargaMaxima;
    }

    public void setCargaMaxima(int cargaMaxima) {
        this.cargaMaxima = cargaMaxima;
    }

}
