package State;

public class CeilingFan implements StateInterface{
    public State state = State.OFF;

    @Override
    public State getState(){
        return state;
    }

    @Override
    public void pull(){
        if(state == State.OFF){
            state = State.LOW;
        }else if(state == State.LOW){
            state = State.MEDIUM;
        }else if(state == State.MEDIUM){
            state = State.HIGH;
        }else{
            state = State.OFF;
        }
    }
}
