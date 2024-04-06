package lab03.Voos;

public class Voo {
    private String codigoDeVoo;
    private Aviao aviao;
    private int numeroLugaresReservados;

    public Voo(String codigoDeVoo, Aviao aviao) {
        this.codigoDeVoo = codigoDeVoo;
        this.aviao = aviao;
        this.numeroLugaresReservados = 0;
    }

    public String getCodigoDeVoo() {
        return codigoDeVoo;
    }

    public void setCodigoDeVoo(String codigoDeVoo) {
        this.codigoDeVoo = codigoDeVoo;
    }

    public Aviao getAviao(){
        return aviao;
    }

    public void setAviao(Aviao aviao){
        this.aviao = aviao;
    }

    public int getNumeroLugaresReservados(){
        return numeroLugaresReservados;
    }

    public void setNumeroLugaresReservados(int numeroLugaresReservados){
        this.numeroLugaresReservados = numeroLugaresReservados;
    }

    public int adicionarReservaLugar(){
        return numeroLugaresReservados++;
    }
}