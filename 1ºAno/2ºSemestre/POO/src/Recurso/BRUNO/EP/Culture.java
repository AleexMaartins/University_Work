package EP;

public class Culture extends Activity{

    public enum Option{
        ARCHITECTURAL_TOUR,RIVER_TOUR,ART_MUSEUM,WINE_TASTING
    }

    private int nParticipants;
    private Culture.Option option;

    public Culture(Culture.Option option, int nParticipants){
        super(nParticipants, 25);
        this.option = option;
        this.nParticipants = nParticipants;
    }

    public int getNparticipants(){
        return this.nParticipants;
    }

    public Culture.Option getOption(){
        return option;
    }

    public void setNparticipants(int nParticipants){
        this.nParticipants = nParticipants;
    }

    public void setOption(Culture.Option option){
        this.option = option;
    }

    @Override
    public String toString(){
        switch(option){
            case ARCHITECTURAL_TOUR: return String.format("%s for %d participants.", option.name(), this.getNparticipants());
            case RIVER_TOUR : return String.format("%s for %d participants.", option.name(), this.getNparticipants());
            case ART_MUSEUM : return String.format("%s for %d participants.", option.name(), this.getNparticipants());
            case WINE_TASTING : return String.format("%s for %d participants.", option.name(), this.getNparticipants());
            default : return null;
        }
    }
}
