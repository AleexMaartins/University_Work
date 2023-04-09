package Aula08Novo;

import java.util.ArrayList;

public class Ex1 {
    public static void main(String[] args) {
        // Cria uma empresa
        Ex1EmpresaDeAluguerDeViaturas empresa = new Ex1EmpresaDeAluguerDeViaturas("Minha Empresa", "12345-678",
                "contato@minhaempresa.com");

        // Adiciona alguns veículos
        Ex1Motociclo moto = new Ex1Motociclo("AB-12-CD", "Honda", "CBR 1000", 150, "desportivo");
        empresa.addVeiculo(moto);

        Ex1AutomovelLigeiro carro = new Ex1AutomovelLigeiro("EF-34-GH", "Volkswagen", "Golf", 120, "12345", 500);
        empresa.addVeiculo(carro);

        Ex1Taxi taxi = new Ex1Taxi("IJ-56-KL", "Toyota", "Prius", 100, "67890", 400, "12345/01");
        empresa.addVeiculo(taxi);

        // Cria novos veículos elétricos
        Ex1bAutomovelLigeiroEletrico carroEletrico = new Ex1bAutomovelLigeiroEletrico("KL-78-MN", "Tesla", "Model S",
                200, "67891", 400, 100);
        Ex1bPesadoPassageirosEletrico autocarroEletrico = new Ex1bPesadoPassageirosEletrico("OP-23-QR", "Volvo",
                "7900 Electric", 180, "12346", 2000, 50, 100);

        // Adiciona os novos veículos à lista de veículos da empresa
        empresa.addVeiculo(carroEletrico);
        empresa.addVeiculo(autocarroEletrico);

        // Simula trajetos nos novos veículos elétricos
        carroEletrico.trajeto(150);
        autocarroEletrico.trajeto(100);

        // Imprime as informações de viagem dos veículos elétricos
        System.out.println("Informações de viagem dos veículos elétricos:");
        ArrayList<Ex1Veiculo> veiculos = empresa.getVeiculos();
        for (Ex1Veiculo veiculo : veiculos) {
            if (veiculo instanceof Ex1bVeiculoEletrico) {
                Ex1bVeiculoEletrico veiculoEletrico = (Ex1bVeiculoEletrico) veiculo;
                System.out.printf("%s - Autonomia: %d km / Distância total: %d km%n", veiculo.getMatricula(),
                        veiculoEletrico.autonomia(), veiculo.distanciaTotal());
            }
        }

        // Imprime a lista de veículos da empresa
        System.out.println("Veículos da empresa:");
        for (Ex1Veiculo veiculo : veiculos) {
            System.out.println(veiculo);
        }
        System.out.println();

        // Simula viagens nos veículos
        moto.trajeto(100);
        carro.trajeto(200);
        taxi.trajeto(300);

        // Imprime as informações de viagem dos veículos
        System.out.println("Informações de viagem:");
        for (Ex1Veiculo veiculo : empresa.getVeiculos()) {
            System.out.printf("%s - Último trajeto: %d km / Distância total: %d km%n", veiculo.getMatricula(),
                    veiculo.ultimoTrajeto(), veiculo.distanciaTotal());

        }
    }
}