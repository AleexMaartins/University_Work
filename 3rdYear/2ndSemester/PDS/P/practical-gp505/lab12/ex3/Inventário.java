package lab12.ex3;

public class Inventário implements State {

    public void regista(Livro livro) {
        livro.setEstadoAtual(new Disponível());
    }

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
        System.out.println("Operação não disponível");
    }
    
}
