package lab05.ex2;

public class Milk implements Portion{
    
    private Temperature temperature = Temperature.WARM;
    private State state = State.Liquid;

    public State getState() {
        return state;
    }   

    public Temperature getTemperature() {
        return temperature;
    }

    @Override
    public String toString() {
        return "Milk: Temperature " + temperature + ", State " + state;
    }
    
}
