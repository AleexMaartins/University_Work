package lab12.ex3;

public class Emprestado implements State{



    @Override
    public void reserva(Livro livro) {
        System.out.println("Operação não disponível");
    }

    @Override
    public void requisita(Livro livro) {
        System.out.println("Operação não disponível");
    }

    @Override
    public void devolve(Livro livro) {
        livro.setEstadoAtual(new Disponível());
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
