public class Flight {
    private final Plane plane;
    private final String flightCode;
    private final int executiveCapacity;
    private final int touristCapacity;
    private int reservationNumber;

    public Flight(String flightCode, Plane plane) {
        this.flightCode = flightCode;
        this.plane = plane;
        this.executiveCapacity = plane.hasExecutive() ? plane.getExecutiveCapacity() : 0;
        this.touristCapacity = plane.getTouristCapacity();
        this.reservationNumber = 0;

        FlightManager.flights.put(this.flightCode, this);
    }

    public String getFlightCode() {
        return this.flightCode;
    }

    public int getExecutiveCapacity() {
        return this.executiveCapacity;
    }

    public int getTouristCapacity() {
        return this.touristCapacity;
    }

    public int getReservationNumber() {
        return this.reservationNumber;
    }

    public Plane getPlane() {
        return this.plane;
    }

    public void incrementReservationNumber(int num) {
        this.reservationNumber += num;
    }

    public void decrementReservationNumber(int num) {
        this.reservationNumber -= num;
    }

    @Override
    public String toString() {
        if (this.plane.hasExecutive()) {
            return "Código de voo " + this.flightCode + ". Lugares disponíveis: " + this.executiveCapacity + " lugares em classe Executiva; " + this.touristCapacity + " lugares em classe Turística.";
        }
        return "Código de voo " + this.flightCode + ". Lugares disponíveis: " + this.touristCapacity + " lugares em classe Turística.";
    }
}
