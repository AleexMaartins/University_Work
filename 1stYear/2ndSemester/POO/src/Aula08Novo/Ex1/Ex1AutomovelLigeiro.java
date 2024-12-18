package Aula08Novo;

public class Ex1AutomovelLigeiro extends Ex1Veiculo{
    private String nrDoQuadro;
    private int capDaBagageira;
    

    public Ex1AutomovelLigeiro(String matricula, String marca, String modelo, int potência, String nrDoQuadro, int capDaBagageira) {
        super(matricula, marca, modelo, potência);
        this.nrDoQuadro = nrDoQuadro;
        this.capDaBagageira = capDaBagageira;

        System.out.println("Automóvel ligeiro criado");
    }


    public String getnrDoQuadro() {
        return nrDoQuadro;
    }


    public void setnrDoQuadro(String nrDoQuadro) {
        this.nrDoQuadro = nrDoQuadro;
    }


    public int getCapDaBagageira() {
        return capDaBagageira;
    }


    public void setCapDaBagageira(int capDaBagageira) {
        this.capDaBagageira = capDaBagageira;
    }

}