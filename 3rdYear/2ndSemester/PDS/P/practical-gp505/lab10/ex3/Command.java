package lab10.ex3;

public interface Command {
    public boolean execute(); //boolean for feedback
    public boolean undo();
}
