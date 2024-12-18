package lab03.Voos;

public class Aviao {
    private String codigoDeVoo;
    private Assento filaClasseTuristica[][];
    private Assento filaClasseExecutiva[][];
    private static int numFila = 1;

    public Aviao(String codigoDeVoo, int numFilaTuristica, int numAssentosPorFilaTuristica, int numFilaExecutiva, int numAssentosPorFilaExecutiva) {
        this.codigoDeVoo = codigoDeVoo;
        filaClasseTuristica = new Assento[numFilaTuristica][numAssentosPorFilaTuristica];
        filaClasseExecutiva = new Assento[numFilaExecutiva][numAssentosPorFilaExecutiva];

        adicionarLugaresExecutiva(numFilaExecutiva, numAssentosPorFilaExecutiva);
        adicionarLugaresTuristica(numFilaTuristica, numAssentosPorFilaTuristica);
    }

    public void adicionarLugaresExecutiva(int numFilaExecutiva, int numAssentosPorFilaExecutiva) {
        for (int i = 0; i < numFilaExecutiva; i++) {
            for (int j = 0; j < numAssentosPorFilaExecutiva; j++) {
                filaClasseExecutiva[i][j] = new Assento(numFila, ((char)(j + 'A')), ClasseVoo.EXECUTIVA);
            }
            numFila++;
        }
    }

    public void adicionarLugaresTuristica(int numFilaTuristica, int numAssentosPorFilaTuristica) {
        for (int i = 0; i < numFilaTuristica; i++) {
            for (int j = 0; j < numAssentosPorFilaTuristica; j++) {
                filaClasseTuristica[i][j] = new Assento(numFila, ((char)(j + 'A')), ClasseVoo.TURISTICA);
            }
            numFila++;
        }
    }

    public String getCodigoDeVoo() {
        return codigoDeVoo;
    }

    public Assento[][] getFilaClasseExecutiva() {
        return filaClasseExecutiva;
    }

    public Assento[][] getFilaClasseTuristica() {
        return filaClasseTuristica;
    }

    public void setCodigoDeVoo(String codigoDeVoo) {
        this.codigoDeVoo = codigoDeVoo;
    }

    public void setFilaClasseExecutiva(Assento[][] filaClasseExecutiva) {
        this.filaClasseExecutiva = filaClasseExecutiva;
    }

    public void setFilaClasseTuristica(Assento[][] filaClasseTuristica) {
        this.filaClasseTuristica = filaClasseTuristica;
    }
}
