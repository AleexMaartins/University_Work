package lab11.ex3;

public abstract class TrafficParticipant {
    protected TrafficMediator mediator;

    public TrafficParticipant(TrafficMediator mediator) {
        this.mediator = mediator;
    }

    public abstract void send(String message);
    public abstract void receive(String message);
}