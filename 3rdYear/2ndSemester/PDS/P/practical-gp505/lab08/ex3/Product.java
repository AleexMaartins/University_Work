package lab08.ex3;

public class Product implements Component{
    private String name;
    private double weight;

    public Product(String name, double weight) {
        this.name = name;
        this.weight = weight;
    }

    public String getName() {
        return name;
    }

    public double getWeight() {
        return weight;
    }

    @Override
    public String toString() {
        return this.getClass().getSimpleName() + " '" + name + "' - Weight : " + String.format("%.1f", weight);    }
}
