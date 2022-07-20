package EP;

public abstract class Activity {
    private int nParticipants;
    private double price;

    public Activity(int nParticipants, double price){
        this.nParticipants = nParticipants;
        this.price = price;
    }

    public int getNparticipants(){
        return this.nParticipants;
    }

    public double getPrice(){
        return this.price;
    }

    public void setNparticipants(int nParticipants){
        this.nParticipants = nParticipants;
    }

    public void setPrice(double price){
        this.price = price;
    }

    @Override
    public boolean equals(Object obj){
        if(this == obj){
            return true;
        }

        if(obj == null){
            return false;
        }

        if(this.getClass() != obj.getClass()){
            return false;
        }

        Activity other = (Activity) obj;

        return (this.getNparticipants() == other.getNparticipants() && this.getPrice() == other.getPrice());
    }
}
