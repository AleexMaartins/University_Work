package lab11.ex3;

public class TrafficLight extends TrafficParticipant {
    private String location;

    public TrafficLight(TrafficMediator mediator, String location) {
        super(mediator);
        this.location = location;
    }

    @Override
    public void send(String message) {
        System.out.println("Semáforo em " + this.location + ": Enviando mensagem: " + message);
        mediator.notify(message, this);
    }

    @Override
    public void receive(String message) {
        System.out.println("Semáforo em " + this.location + ": Recebendo mensagem: " + message);
    }
}
