package Aula05Novo;

public class Ex3 {
    public static void main(String[] args) {
        Ex3AgenciaLeilao agenciaLeilao = new Ex3AgenciaLeilao();

        // Create some imoveis and add them to the agenciaLeilao
        Ex3Imovel imovel1 = new Ex3Imovel(3, "Lisboa", 200000, true, null, null);
        agenciaLeilao.cadastrarImovel(imovel1);

        Ex3Imovel imovel2 = new Ex3Imovel(2, "Porto", 150000, false, new Ex3Date(2022, 4, 1), new Ex3Date(2022, 4, 30));
        agenciaLeilao.cadastrarImovel(imovel2);

        Ex3Imovel imovel3 = new Ex3Imovel(4, "Coimbra", 300000, true, new Ex3Date(2022, 3, 1), new Ex3Date(2022, 3, 31));
        agenciaLeilao.cadastrarImovel(imovel3);

        // Test buscarPorLocalidade method
        System.out.println("Imoveis em Lisboa:");
        for (Ex3Imovel imovel : agenciaLeilao.buscarPorLocalidade("Lisboa")) {
            System.out.println(imovel.toString());
        }

        // Test buscarPorPreco method
        System.out.println("Imoveis com preco ate 250000:");
        for (Ex3Imovel imovel : agenciaLeilao.buscarPorPreco(250000)) {
            System.out.println(imovel.toString());
        }

        // Test buscarPorDisponibilidade method
        System.out.println("Imoveis disponiveis:");
        for (Ex3Imovel imovel : agenciaLeilao.buscarPorDisponibilidade(true)) {
            System.out.println(imovel.toString());
        }

        // Test buscarPorDataLeilao method
        System.out.println("Imoveis com leilao em abril 2022:");
        for (Ex3Imovel imovel : agenciaLeilao.buscarPorDataLeilao(new Ex3Date(1, 4, 2022), new Ex3Date(30, 4, 2022))) {
            System.out.println(imovel.toString());
        }

        // Test removerImovel method
        agenciaLeilao.removerImovel(imovel2);
        System.out.println("Imoveis depois de remover o imovel2:");
        for (Ex3Imovel imovel : agenciaLeilao.getImoveis()) {
            System.out.println(imovel.toString());
        }
    }
}
