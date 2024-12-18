package lab11.LeiLao;

import java.util.ArrayList;

public class Leilao {
    ArrayList<Produto> prodList;

    public Leilao() {
        prodList = new ArrayList<>();
    }

    public void add(Produto prod) {
        prodList.add(prod);
    }


}
    