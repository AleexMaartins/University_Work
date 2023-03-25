package Aula06Novo;


public class Ex1Aluno extends Ex1Pessoa{
    private int nmec = 100;
    private Ex1DateYMD DataInsc;
    private static int lastNMEC = 99;

    public Ex1Aluno(String name, int cc, Ex1DateYMD DataNasc){
        super(name, cc, DataNasc);
        lastNMEC++;
        this.nmec = lastNMEC;
    }

    public Ex1Aluno(String name, int cc, Ex1DateYMD DataNasc, Ex1DateYMD DataInsc){
        super(name, cc, DataNasc);
        this.DataInsc = DataInsc;
        lastNMEC++;
        this.nmec = lastNMEC;
    }
    
    
    public int getNMec() {
        return nmec++;
    }
    public void setNMec(int nmec) {
        this.nmec = nmec;
    }

    public Ex1DateYMD getDataInsc() {
        return DataInsc;
    }

    public void setDataInsc(Ex1DateYMD dataInsc) {
        DataInsc = dataInsc;
    }

    @Override
    public String toString() {
        return "Aluno [Nome = " + name + ", cc = " + cc +", Data Nascimento = " + DataNasc +", Data Inscricao =" + DataInsc + ", NMec = "+ nmec +  "]";
    }

}
