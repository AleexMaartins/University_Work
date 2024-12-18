package lab11.LeiLao;

public class Main {
    public static void main(String[] args) {
        // Criar produtos
        Produto produto1 = new Produto("Colar de Pérolas", 100);
        Produto produto2 = new Produto("Escalpe de Índio", 250);
        Produto produto3 = new Produto("Apito de Marfim", 2000);
        Produto produto4 = new Produto("Farofa de Mosca", 21);
        Produto produto5 = new Produto("Pé de Avestruz", 70);

        // Criar gestor
        System.out.println("\n---- Entrada do Gestor ----\n");
        Gestor gestor = new Gestor("Gestor");

        produto1.subscribe(gestor);
        produto2.subscribe(gestor);
        produto3.subscribe(gestor);
        produto4.subscribe(gestor);
        produto5.subscribe(gestor);


        // Criar clientes
        Client cliente1 = new Client("Alexandre");
        Client cliente2 = new Client("Tomás");
        Client cliente3 = new Client("Bruno");


        // Registro
        // Registrar clientes para receber atualizações de produtos
        System.out.println("\n\n---- Registo dos clientes ----\n");
        produto1.subscribe(cliente1);
        produto1.subscribe(cliente2);
        produto1.subscribe(cliente3);

        produto2.subscribe(cliente1);
        produto2.subscribe(cliente2);
        produto2.subscribe(cliente3);
        produto2.unsubscribe(cliente1);

        produto3.subscribe(cliente1);
        produto3.subscribe(cliente2);
        produto3.subscribe(cliente3);

        produto4.subscribe(cliente1);
        produto4.subscribe(cliente2);

        produto5.subscribe(cliente2);
        produto5.subscribe(cliente3);


        // ERRO: Cliente impaciente XD
        produto1.offer(cliente1, 150);

        // START
        System.out.println("\n\n---- Início do leilão ----\n");
        produto1.setState(ProdStatus.LEILAO);
        produto2.setState(ProdStatus.LEILAO);
        produto3.setState(ProdStatus.LEILAO);
        produto4.setState(ProdStatus.LEILAO);
        produto5.setState(ProdStatus.LEILAO);

        // Ofertas
        System.out.println("\n\n---- Ofertas ----\n");
        produto1.offer(cliente1, 150);
        produto1.offer(cliente2, 200);
        produto1.offer(cliente3, 250);
        produto1.offer(cliente1, 210);
        produto1.offer(cliente2, 290);
        produto1.setState(ProdStatus.VENDIDO);

        // ERRO: Cliente distraído XD
        produto1.offer(cliente1, 300);


        // Ningém quer o produto 2
        produto1.setState(ProdStatus.STOCK);

        produto3.offer(cliente1, 2500);
        produto3.offer(cliente3, 3000);
        produto3.offer(cliente1, 3500);
        produto3.offer(cliente2,5000);
        produto3.setState(ProdStatus.VENDIDO);

        produto4.offer(cliente1, 25);
        produto4.offer(cliente2, 30);
        produto4.offer(cliente1, 35);
        produto4.setState(ProdStatus.VENDIDO);

        produto5.offer(cliente2, 80);
        produto5.offer(cliente3, 90);
        produto5.offer(cliente2, 100);
        produto5.offer(cliente3, 99);
        produto5.offer(cliente3, 101);
        produto5.setState(ProdStatus.VENDIDO);

        // Fim





        
    }
}
    

