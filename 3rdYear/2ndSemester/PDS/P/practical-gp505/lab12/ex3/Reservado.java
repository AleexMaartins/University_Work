package lab12.ex3;

public class Reservado implements State{

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
        System.out.println("Operação não disponível");
    }

    @Override
    public void cancelaReserva(Livro livro) {
        livro.setEstadoAtual(new Disponível());
    }

    @Override
    public void regista(Livro livro) {
        System.out.println("Operação não disponível");
    }



    
}
