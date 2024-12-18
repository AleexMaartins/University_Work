public interface FlightManagerInterface {
    public void importData(String[] tokens);
    public void printFlightMap(String[] tokens);
    public void addFlight(String[] tokens);
    public void makeReservation(String[] tokens, boolean print);
    public void cancelReservation(String[] tokens);
}
