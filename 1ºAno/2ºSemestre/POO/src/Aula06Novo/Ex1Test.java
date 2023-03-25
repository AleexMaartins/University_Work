package Aula06Novo;


public class Ex1Test {
    public static void main(String[] args) {
        Ex1Aluno al = new Ex1Aluno("Andreia Melo", 9855678, new Ex1DateYMD(18, 7, 1990), new Ex1DateYMD(1, 9, 2018));
        Ex1Professor pl = new Ex1Professor("Andreia Melo", 9855678,new Ex1DateYMD(18, 7, 1990), new Ex1DateYMD(1, 9, 2018), "Auxiliar", "ETI");
        Ex1Bolseiro bls = new Ex1Bolseiro("Igor Santos", 8976543, new Ex1DateYMD(11, 5, 1985), pl, 900);
        bls.setValorBolsa(1050);
        System.out.println("Aluno: " + al.getName());
        System.out.println(al);
        System.out.println("Bolseiro: " + bls.getName() + ", NMec: " + bls.getNMec() + ", Bolsa: " + bls.getValorBolsa() + ", Orientador: " + bls.getOrientador());
        System.out.println(bls);
    }
}
