package EP;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;


public class EventManager {
    private String nome;
    private Map<Client,List<Event>> clientsAndEvents;

    public EventManager(String nome){
        this.nome = nome;
        this.clientsAndEvents = new LinkedHashMap<Client,List<Event>>();
    }

    /* 
    public EventManager(String nome, Map<Client,List<Event>> clientsAndEvents){
        this.nome = nome;
        this.clientsAndEvents = clientsAndEvents;
    }
    */

    public String getNome(){
        return nome;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public Map<Client,List<Event>> getClientsAndEvents(){
        return clientsAndEvents;
    }


    public Client addClient(String client, String localidade){
        Client newCl = new Client(client, localidade);
        List<Event> events = new ArrayList<Event>();

        
        if(!clientsAndEvents.containsKey(newCl)){
            clientsAndEvents.put(newCl, events);
        }

        return newCl;
        

        /* 
        for(Client c : clientsAndEvents.keySet()){
            if(c.equals(newCl)){
                return c;
            }
        }
        clientsAndEvents.put(newCl, events);
        return newCl;
        */
    }

    public Event addEvent(Client cl, LocalDate date){
        
        Event newEvent = new Event(date);

        if(!hasEventWithSameDate(cl, newEvent)){
            clientsAndEvents.get(cl).add(newEvent);
            return newEvent;
        }
        return null; //return newEvent?

    }

    public boolean hasEventWithSameDate(Client cl,Event testEvent){
        

        for(Event e : clientsAndEvents.get(cl)){
            if(e.getDate().equals(testEvent.getDate())){
                return true;
            }
        }
        return false;
    }

    public String listClients(){
        String finalStr = "Clients:";
        for(Client c : clientsAndEvents.keySet()){
            finalStr += "\n" + c.toString();
        }
        return finalStr;
    }

    public String listEvents(){
        String str = "Events:";
        for (Client c : clientsAndEvents.keySet()) {
            str += "\n" + c.toString();
            for (Event e : clientsAndEvents.get(c)) //fazer toString() para o objeto Event
                str += "\n" + e.toString();
        }
        return str;
    }
}
