public class dog extends animal {
    private String breed;

    public dog(int id, String name, int weight, int age, String godfather, String breed) {
        super(id, name, weight, age, godfather);
        this.breed = breed;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    @Override
    public String toString() {
        return "dog [breed=" + breed + "]";
    }
    
}
