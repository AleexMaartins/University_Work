package Aula06Novo;

import Aula06Novo.Ex1DateYMD;

public class Ex1Professor extends Ex1Pessoa {
    private String cat;
    private String dep;
    private Ex1DateYMD DataContr;
    
    public Ex1Professor(String name, int cc, Ex1DateYMD DataNasc,Ex1DateYMD DataContr, String cat, String dep){
        super(name, cc, DataNasc);
        this.cat = cat;
        this.dep = dep;
        this.DataContr = new Ex1DateYMD(DataContr.getDay(), DataContr.getMonth(), DataContr.getYear());

    }


    public String getCat() {
        return cat;
    }

    public void setCat(String cat) {
        this.cat = cat;
    }

    public String getDep() {
        return dep;
    }

    public void setDep(String dep) {
        this.dep = dep;
    }


    @Override
    public String toString() {
        return "Professor [Data Contratacao = " + DataContr + ", Categoria = " + cat + ", Departamento = " + dep + "]";
    }

    
}
