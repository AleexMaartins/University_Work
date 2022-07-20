package EP;

public class Catering extends Activity{

    public enum Option{
        FULL_MENU,DRINKS_AND_SNACKS
    }

    private int nParticipants;
    private Catering.Option option;

    public Catering(Catering.Option option, int nParticipants){
        super(nParticipants, 30);
        this.option = option;
        this.nParticipants = nParticipants;
    }

    public int getNparticipants(){
        return this.nParticipants;
    }

    public Catering.Option getOption(){
        return this.option;
    }

    public void setNparticipants(int nParticipants){
        this.nParticipants = nParticipants;
    }

    public void setOption(Catering.Option option){
        this.option = option;
    }

    @Override
    public String toString(){
        switch(option){
            case FULL_MENU: return String.format("%s for %d participants.", option.name(), this.getNparticipants());
            case DRINKS_AND_SNACKS : return String.format("%s for %d participants.", option.name(), this.getNparticipants());
            default : return null;
        }
    }
}
