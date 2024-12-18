package lab12.ex3;

public interface State {
    public void reserva(Livro livro);
    public void requisita(Livro livro);
    public void devolve(Livro livro);
    public void cancelaReserva(Livro livro);
    public void regista(Livro livro);    
}
