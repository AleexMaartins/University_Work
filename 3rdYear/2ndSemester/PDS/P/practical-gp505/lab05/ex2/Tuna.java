package lab05.ex2;

public class Tuna implements Portion {
    
    private Temperature temperature = Temperature.COLD;
    private State state = State.Solid;

    public State getState() {
        return state;
    }

    public Temperature getTemperature() {
        return temperature;
    }

    @Override
    public String toString() {
        return "Tuna: Temperature " + temperature + ", State " + state;
    }

    
    
}
