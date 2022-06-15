package QA;

public class Pessoa {
    private String nome;
    private int cc;
    private Date dataNasc;

    Pessoa(String nome, int cc, Date dataNasc) {
        this.nome = nome;
        this.cc = cc;
        this.dataNasc = dataNasc;

    }

    Date d = new DateYMD(5, 10, 1988);

    String getName() {
        return nome;
    }

    @Override
    public String toString() {
        return String.format("%s; CC: %d; Data de Nascimento: %s", this.nome, this.cc, this.dataNasc);
    }
}