package lab11.ex3;

public class Main {
    public static void main(String[] args) {
        TrafficMediator mediator = new TrafficMediatorImpl();

        Car car1 = new Car(mediator, "Carro1");
        Car car2 = new Car(mediator, "Carro2");

        TrafficLight light1 = new TrafficLight(mediator, "Rua A");
        TrafficLight light2 = new TrafficLight(mediator, "Rua B");

        mediator.addCar(car1);
        mediator.addCar(car2);
        mediator.addTrafficLight(light1);
        mediator.addTrafficLight(light2);

        car1.send("Aproximando-se do cruzamento");
        light1.send("Sinal verde para Rua A");
    }
}
