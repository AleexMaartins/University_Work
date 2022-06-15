package QA;

import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class RandomTickets {

    private int bilhete;

    RandomTickets(int bilhete) {
        this.bilhete = bilhete;
    }

    Date d = new DateYMD(5, 10, 1988);

    int getRandomTickets() {// escolher um ticket aleatorio dos disponiveis
        // listAvailableTickets()
    }

    Array listPessoas() {// associar um RandomTicket a uma pessoa da lista r
        Map<Pessoa, getRandomTickets> mapa = new TreeMap<>();

    }

    String listAvailableTickets() { // importar o txt
        ArrayList<String> lista = new ArrayList<>();

        carregarLista(lista, "src/QA/Lista_festivais.txt");

    }

    private void carregarLista(ArrayList<String> lista, String string) {
    }

    @Override
    public String toString() {
        return String.format("%s; CC: %d; Data de Nascimento: %s", this.nome, this.cc, this.dataNasc);
    }
}