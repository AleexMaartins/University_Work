import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EnergyUsageReport {
    private Map<Integer, Customer> customer;

    public EnergyUsageReport() {
        customer = new HashMap<>();

    }

    public void load(String file) {
        List<String> content = null;
        try {
            content = Files.readAllLines(Paths.get(file));
        } catch (Exception e) {
            e.printStackTrace();
        }

        for (String line : content) {
            String[] tmp = line.split("\\|");
            List<Double> meterReadings = List.of(Double.parseDouble(tmp[1]), Double.parseDouble(tmp[2]),
                    Double.parseDouble(tmp[3]));
            customer.put(Integer.parseInt(tmp[0]), new Customer(Integer.parseInt(tmp[0]), meterReadings));

        }
    }

    public void addCustomer(Customer newCustomer) {
        customer.put(newCustomer.getCustomerId(), newCustomer);

    }

    public void removeCustomer(int id) {
        customer.remove(id);
    }

    public void printAllCustomers() {
        for (int id : customer.keySet()) {
            String value = customer.get(id).toString();
            System.out.println(value);
        }

    }

    public Customer getCustomer(int id) {
        return customer.get(id);
    }

    public double calculateTotalUsage(int id) {
        Customer c = getCustomer(id);
        List<Double> meterReadings = c.getMeterReadings();
        return (meterReadings.get(0) + meterReadings.get(1) + meterReadings.get(2)) / 3;
    }

    public void generateReport(String name) {
        List<String> lines = new ArrayList<>();

        for (int id : customer.keySet()) {
            lines.add(String.format("ID: %d TOTAL: %.2f", id, calculateTotalUsage(id)));
        }

        Path file = Paths.get(name);
        try {
            Files.write(file, lines, StandardCharsets.UTF_8);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}