package EP;

public class Sport extends Activity{ 

    public enum Modality{
        KAYAK,HIKING
    }

    private int nParticipants;
    private Sport.Modality modality;

    public Sport(Sport.Modality modality, int nParticipants){
        super(nParticipants,20);
        this.modality = modality;
        this.nParticipants = nParticipants;
    }

    public int getNparticipants(){
        return this.nParticipants;
    }

    public Sport.Modality getModality(){
        return this.modality;
    }

    public void setNparticipants(int nParticipants){
        this.nParticipants = nParticipants;
    }

    public void setGetModality(Sport.Modality modality){
        this.modality = modality;
    }

    @Override
    public String toString(){
        switch(modality){
            case KAYAK: return String.format("%s for %d participants.", modality.name(), this.getNparticipants());
            case HIKING : return String.format("%s for %d participants.", modality.name(), this.getNparticipants());
            default : return null;
        }
    }
}
