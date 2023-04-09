public class bird extends animal{
    private String habitat;
    public bird(int id, String name, int weight, int age, String godfather, String habitat) {
        super(id, name, weight, age, godfather);
        this.habitat = habitat;
    }
    public String getHabitat() {
        return habitat;
    }
    public void setHabitat(String habitat) {
        this.habitat = habitat;
    }
    @Override
    public String toString() {
        return "bird [habitat=" + habitat + "]";
    }
    
}
