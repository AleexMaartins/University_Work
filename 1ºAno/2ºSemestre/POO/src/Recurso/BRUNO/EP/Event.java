package EP;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Event implements IEvent{
    private LocalDate date;
    private List<Activity> lst;

    public Event(LocalDate date, List<Activity> lst){
        this.date = date;
        this.lst = lst;
    }

    public Event(LocalDate date){
        this.date = date;
        this.lst = new ArrayList<>();
    }

    public LocalDate getDate(){
        return this.date;
    }

    public List<Activity> getList(){
        return this.lst;
    }

    public void setDate(LocalDate date){
        this.date = date;
    }

    public void setList(List<Activity> lst){
        this.lst = lst;
    }

    public Event addActivity(Activity activity){ //ver este novamente
        if(activity.getClass() == Catering.class && hasActivity(lst)){
            return this;
        }
        else{
            lst.add(activity);
            return this;
        }
        
    }

    public boolean hasActivity(List<Activity> lst){ //metodo para ver se ja existe atividade de Catering
        for(Activity a : lst){
            if(a.getClass() == Catering.class){
                return true;
            }
           
        }
        return false;
    }

    public double eventPrice(){
        double price = 0;
        for(Activity a : lst){
            if(a.getClass() == Sport.class){
                price += 20*a.getNparticipants();
            }
            else if(a.getClass() == Culture.class){
                price += 25*a.getNparticipants();
            }
            else{
                price += 30*a.getNparticipants();
            }
        }
        return price;
    }

    public String toString(){
        String str = "*** Evento em " + this.getDate() + ", total=" + this.eventPrice() + " euros";
        for(Activity a : lst){
            str += "\n" + a.toString();
        }
        return str;
    }


}
