public class Package {
    private int id;
    private double weight;
    private String destination;
    private String sender;

    public Package(int id, double weight, String destination, String sender) {
        this.id = id;
        this.weight = weight;
        this.destination = destination;
        this.sender = sender;
    }

    @Override
    public String toString() {
        return "Package{" +
                "ID=" + id +
                ", weight=" + weight +
                ", destination='" + destination + '\'' +
                ", sender='" + sender + '\'' +
                '}';
    }

    public int getID() {
        return id;
    }

    public void setID(int ID) {
        this.id = ID;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getRemetente() {
        return sender;
    }

    public void setRemetente(String sender) {
        this.sender = sender;
    }
}
