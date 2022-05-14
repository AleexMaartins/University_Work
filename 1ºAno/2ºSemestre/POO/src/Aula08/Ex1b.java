package Aula08;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ThreadLocalRandom;
import java.util.List;

public class Ex1b {

    public static void main(String[] args) {
        List<Veiculo> viaturas = new ArrayList<>();
        viaturas.add(new Motociclo("XQ-33-XQ", "Honda", "Fireblade", 322, "Estrada"));
        viaturas.add(new Taxi("AA-22-AA", "Porsche", "Panamera", 214, 4, 20, 69));
        viaturas.add(new Ligeiro("12-AS-32", "Renault", "Megane", 90, 3, 550));
        viaturas.add(new PesadoMecadorias("12-12-12", "Honda", "Carol", 550, 2, 20000, 40000));
        viaturas.add(new PesadoPassageiro("bUEGRANDE", "FERARARARI", "ina", 132312, 3, 5000, 32));
        int maxKm = 0;
        Veiculo maxima = viaturas.get(0);
        for (Veiculo viatura : viaturas) {
            viatura.trajeto(ThreadLocalRandom.current().nextInt(1, 10 + 1));
            viatura.trajeto(ThreadLocalRandom.current().nextInt(1, 10 + 1));
            for (Veiculo viatura2 : viaturas) {
                System.out.printf(
                        "\nViatura 1 (%s) equals(Viatura 2): %b\n.ultimoTrajeto(): %d\t.distanciaPercorrida(): %d\n",
                        viatura,
                        viatura.equals(viatura2), viatura.ultimoTrajeto(), viatura.distanciaTotal());
            }
            if (viatura instanceof VeiculoEletrico) {
                System.out.printf("autonomia: %d\n", ((VeiculoEletrico) viatura).autonomia());
            }
            if (viatura.distanciaTotal() > maxKm) {
                maxKm = viatura.distanciaTotal();
                maxima = viatura;
            }
        }

        System.out.println("\n\n" + viaturas + "\n\n\n");
       

        Empresa empresa;
        try {
            empresa = new Empresa("EIMPRESA", "1234-567", "emailemail", viaturas);
            System.out.println("");
        } catch (UnsupportedOperationException e) {
            System.out.println("Email invalido!");
        }

        empresa = new Empresa("EIMPRESA", "1234-567", "asdasd@gmail.com", viaturas);
        System.out.println("\n\n" + empresa);
        System.out.printf("\n\nViatura com mais distância percorrida: %s", maxima);
    }
}