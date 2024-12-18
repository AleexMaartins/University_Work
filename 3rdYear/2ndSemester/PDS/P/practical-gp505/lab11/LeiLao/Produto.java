package lab11.LeiLao;

public class Produto extends Subject{
    
    private double precoInicial;
    private double preco;

    private int id;
    private int lastId = 0;

    private ProdStatus state;

    public Produto(String nome, double precoInicial) {
        lastId++;
        this.id = lastId;
        this.nome = nome;
        this.precoInicial = precoInicial;
        this.preco = precoInicial;
        this.state = ProdStatus.STOCK;
    }

    public String getNome() {
        return nome;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public int getId(){
        return id;
    }

    public ProdStatus getState() {
        return state;
    }

    public void setState(ProdStatus nextstate) {
        this.state = nextstate;
    }

    public void notifyObservers() {
        for (Observer obs : subscribedPpl) {
            obs.update(this);
        }
    }

    public void offer(Client client, double value) {
        System.out.println("\n\nCliente " + client.getName() + " oferece " + value + " pelo produto " + this.nome);
        if (value <= this.preco) {
            System.out.println("Oferta recusada (valor inferior ao preço atual)");
        } else if(this.state == ProdStatus.VENDIDO) {
            System.out.println("Oferta recusada (produto já foi vendido)");
        } else if(this.state == ProdStatus.STOCK) {
            System.out.println("Offer recusada (produto ainda não está em leilão)");
        } else {
            System.out.println("\nOferta aceite!\n");
            this.preco = value;
            notifyObservers();
        }
            
    }

    public void closeBidding() {
        System.out.println("Bidding is closed.");

        if (preco == precoInicial) {
            state = ProdStatus.STOCK;
            System.out.println("Produto não foi vendido.");
        } else {
            state = ProdStatus.VENDIDO;
            notifyObservers();
            System.out.println("Produto vendido por " + preco + "!");
        }
    }
}