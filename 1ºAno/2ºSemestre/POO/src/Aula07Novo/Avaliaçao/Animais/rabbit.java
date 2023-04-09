public class rabbit extends animal{
    private String pelo;
    public rabbit(int id, String name, int weight, int age, String godfather, String pelo) {
        super(id, name, weight, age, godfather);
        this.pelo = pelo;
    }
    public String getPelo() {
        return pelo;
    }
    public void setPelo(String pelo) {
        this.pelo = pelo;
    }
    @Override
    public String toString() {
        return "rabbit [pelo=" + pelo + "]";
    }
    
}
