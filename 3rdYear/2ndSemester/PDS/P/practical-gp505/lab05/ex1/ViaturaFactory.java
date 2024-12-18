package lab05.ex1;

public class ViaturaFactory {

    public static Motociclo createMotociclo(String string, String string2, String string3, int i, String string4) {
        return new Motociclo(string, string2, string3, i, string4);
    }

    public static Viatura createViatura(Viatura viatura) {
        return viatura;
    }

    public static Ligeiro createAutomovelLigeiro(String string, String string2, String string3, int i, String string4, int j) {
        return new Ligeiro(string, string2, string3, i, j, j);
    }

    public static Taxi createTaxi(String string, String string2, String string3, int i, String string4, int j, String string5) {
        return new Taxi(string, string2, string3, i, j, j, j);
    }


    public static LigeiroEletrico createALEletrico(String string, String string2, String string3, int i, String string4, int j, int k, int l) {
        return new LigeiroEletrico(string, string2, string3, i, j, k, l);
    }

    public static PesadoPassageirosEletrico createPPEletrico(String string, String string2, String string3, int i, int j, String string4, int k, int l, int m) {
        return new PesadoPassageirosEletrico(string, string2, string3, i, j, k, l, m);
    }

    public static PesadoMercadorias createPesadoMercadorias(String string, String string2, String string3, int i, String string4, int j, int k) {
        return new PesadoMercadorias(string, string2, string3, i, j, k, k);
    }

    public static PesadoPassageiros createPesadoPassageiros(String string, String string2, String string3, int i, int j, String string4, int k) {
        return new PesadoPassageiros(string, string2, string3, i, j, k, k);
    }
}


