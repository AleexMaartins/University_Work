package lab11.ex3;

public class Car extends TrafficParticipant {
    private String name;

    public Car(TrafficMediator mediator, String name) {
        super(mediator);
        this.name = name;
    }

    @Override
    public void send(String message) {
        System.out.println(this.name + ": Enviando mensagem: " + message);
        mediator.notify(message, this);
    }

    @Override
    public void receive(String message) {
        System.out.println(this.name + ": Recebendo mensagem: " + message);
    }
}

