package Ex3;
import java.util.ArrayList;
import java.util.List;
public class CarrinhoDeCompras implements Compra {

    private List<Produto> produtos = new ArrayList<>();

    public void adicionarProduto(Produto produto, int quantidade) {
        if (produtos.contains(produto)) {
            int index = produtos.indexOf(produto);
            Produto p = produtos.get(index);
            p.adicionarQuantidade(quantidade);
        } else {
            produto.adicionarQuantidade(quantidade);
            produtos.add(produto);
        }
    }

    public void listarProdutos() {
        System.out.println("Produtos no carrinho:");
        for (Produto produto : produtos) {
            System.out.printf("%s (quantidade: %d)\n", produto.getNome(), produto.getQuantidade());
        }
    }

    public double calcularTotal() {
        double total = 0;
        for (Produto produto : produtos) {
            total += produto.getPreco() * produto.getQuantidade();
        }
        return total;
    }
}
