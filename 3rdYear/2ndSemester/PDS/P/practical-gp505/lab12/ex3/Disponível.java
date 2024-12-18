package lab12.ex3;

public class Disponível implements State {

    @Override
    public void reserva(Livro livro) {
        livro.setEstadoAtual(new Reservado());
    }

    @Override
    public void requisita(Livro livro) {
        livro.setEstadoAtual(new Emprestado());
    }

    @Override
    public void devolve(Livro livro) {
        System.out.println("Operação não disponível");
    }

    @Override
    public void cancelaReserva(Livro livro) {
        System.out.println("Operação não disponível");
    }

    @Override
    public void regista(Livro livro) {
        System.out.println("Operação não disponível");
    }


    
}
