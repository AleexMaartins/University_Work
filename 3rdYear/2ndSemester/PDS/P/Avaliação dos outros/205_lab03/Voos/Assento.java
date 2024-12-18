package lab03.Voos;

public class Assento {
    private int fila;
    private char letraAssento;
    private boolean assentoOcupado;
    private ClasseVoo classe;
    private int idAssentoReservado = 0;
    
    public Assento(int fila, char letraAssento, ClasseVoo classe) {
        this.fila = fila;
        if (String.valueOf(letraAssento).matches("^[A-Z]$")) {
            this.letraAssento = letraAssento;
        } else {
            throw new IllegalArgumentException("Letra do assento inválida.");
        }
        this.classe = classe;
        this.assentoOcupado = false;
    }

    public int getFila() {
        return fila;
    }

    public char getLetraAssento() {
        return letraAssento;
    }

    public boolean getAssentoOcupado(){
        return assentoOcupado;
    }

    public ClasseVoo getClasse() {
        return classe;
    }

    public int getIdAssentoReservado() {
        return idAssentoReservado;
    }

    public void setFila(int fila){
        this.fila = fila;
    }

    public void setLetraAssento(char letraAssento){
        this.letraAssento = letraAssento;
    }

    public void setAssentoOcupado(boolean assentoOcupado){
        this.assentoOcupado = assentoOcupado;
    }

    public void setClasse(ClasseVoo classe){
        this.classe = classe;
    }

    public void setIdAssentoReservado(int idAssentoReservado){
        this.idAssentoReservado = idAssentoReservado;
    }
}
