package lab11.LeiLao;

import java.util.HashSet;
import java.util.Set;

public class Subject {
    Set<Observer> subscribedPpl = new HashSet<>();
    protected String nome;

    public void subscribe(Observer obs) {
        subscribedPpl.add(obs);
        System.out.println(obs.getName() + " participará no leilão d' " + this.nome);
    }

    public void unsubscribe(Observer obs) {
        subscribedPpl.remove(obs);
        System.out.println(obs.getName() + " foi removido do leilão d' " + this.nome);

    }
    
}
