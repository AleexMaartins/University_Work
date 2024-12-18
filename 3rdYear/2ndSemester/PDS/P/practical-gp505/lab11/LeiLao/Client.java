package lab11.LeiLao;

public class Client implements Observer{

    private String nome;

    public Client(String nome) {
        this.nome = nome;
    }

    @Override
    public void update(Produto produto) {
        System.out.println(nome + " foi notificado que o produto " + produto.getNome() + " foi atualizado para " + produto.getPreco());
    }

    @Override
    public String getName() {
        return nome;
    }
}
