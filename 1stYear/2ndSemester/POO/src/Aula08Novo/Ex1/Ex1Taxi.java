package Aula08Novo;

public class Ex1Taxi extends Ex1AutomovelLigeiro {
    private String NrDeLicença;

    public Ex1Taxi (String matricula, String marca, String modelo, int potência, String NrDoQuadro, int capDaBagageira, String NrDeLicença) {
        super(matricula, marca, modelo, potência, NrDoQuadro, capDaBagageira);
        this.NrDeLicença = NrDeLicença;
    }

    public String getNrDeLicença() {
        return NrDeLicença;
    }

    public void setNrDeLicença(String NrDeLicença) {
        this.NrDeLicença = NrDeLicença;
    }
    
}

