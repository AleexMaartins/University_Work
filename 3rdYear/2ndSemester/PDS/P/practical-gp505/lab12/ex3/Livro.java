package lab12.ex3;

public class Livro {
    private String titulo;
    private String autor;
    private State estadoAtual;
    private int id;
    private static int lastId = 1;

    public Livro(String titulo, String autor) {
        this.id = lastId++;
        this.titulo = titulo;
        this.autor = autor;
        this.estadoAtual = new Inventário();

    }

    //--------------------------------------------

    public int getId(){
        return id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }



    public State getEstadoAtual() {
        return estadoAtual;
    }

    public void setEstadoAtual(State estadoAtual) {
        this.estadoAtual = estadoAtual;
    }

    //--------------------------------------------

    public void regista() {
        estadoAtual.regista(this);
    }

    public void reserva() {
        estadoAtual.reserva(this);
    }

    public void requisita() {
        estadoAtual.requisita(this);
    }

    public void devolve() {
        estadoAtual.devolve(this);
    }

    public void cancelaReserva() {
        estadoAtual.cancelaReserva(this);
    }

    //--------------------------------------------

}
