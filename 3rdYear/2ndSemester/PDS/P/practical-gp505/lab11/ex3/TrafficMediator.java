package lab11.ex3;

public interface TrafficMediator {
    void notify(String message, TrafficParticipant participant);
    void addCar(Car car);
    void addTrafficLight(TrafficLight trafficLight);
}
