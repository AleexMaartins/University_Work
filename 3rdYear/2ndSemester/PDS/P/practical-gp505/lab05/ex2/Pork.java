package lab05.ex2;

public class Pork implements Portion{
    private Temperature temperature = Temperature.WARM;
    private State state = State.Solid;

    public State getState() {
        return state;
    }

    public Temperature getTemperature() {
        return temperature;
    }

    @Override
    public String toString() {
        return "Pork: Temperature " + temperature + ", State " + state;
    }

    

    
}
