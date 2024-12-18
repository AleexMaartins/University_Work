package lab11.ex3;

import java.util.ArrayList;
import java.util.List;

public class TrafficMediatorImpl implements TrafficMediator {
    private List<Car> cars;
    private List<TrafficLight> trafficLights;

    public TrafficMediatorImpl() {
        this.cars = new ArrayList<>();
        this.trafficLights = new ArrayList<>();
    }

    @Override
    public void addCar(Car car) {
        this.cars.add(car);
    }

    @Override
    public void addTrafficLight(TrafficLight trafficLight) {
        this.trafficLights.add(trafficLight);
    }

    @Override
    public void notify(String message, TrafficParticipant participant) {
        if (participant instanceof Car) {
            for (TrafficLight light : this.trafficLights) {
                light.receive(message);
            }
        } else if (participant instanceof TrafficLight) {
            for (Car car : this.cars) {
                car.receive(message);
            }
        }
    }
}