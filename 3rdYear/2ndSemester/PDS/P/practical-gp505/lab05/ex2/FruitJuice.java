package lab05.ex2;

public class FruitJuice implements Portion{
    private String fruitName;
    private Temperature temperature = Temperature.COLD;
    private State state = State.Liquid;

    public State getState() {
        return state;
    }

    public Temperature getTemperature() {
        return temperature;
    }

    public String getFruitName() {
        return fruitName;
    }

    protected FruitJuice(String fruitName) {
        this.fruitName = fruitName;
    }

    @Override
    public String toString() {
        return "FruitJuice: " + fruitName + ", Temperature " + temperature + ", State " + state;
    }
    
}
