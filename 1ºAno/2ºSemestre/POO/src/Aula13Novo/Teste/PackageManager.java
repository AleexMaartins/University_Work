import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.*;

public class PackageManager {
    private Map<Integer, Package> packages;

    public PackageManager() {
        this.packages = new HashMap<>();
    }

    public void addPackage(Package pkg) {
        packages.put(pkg.getID(), pkg);
    }

    public void removePackage(int id) {
        packages.remove(id);
    }

    public void readPackagesFile(String filePath) {
        List<String> lines = new ArrayList<>();
        try {
            lines = Files.readAllLines(Path.of(filePath));

            if (lines.size() > 1) {
                lines = lines.subList(1, lines.size());
            } else {
                System.out.println("File contains only one line.");
            }
        } catch (IOException e) {
        }

        for (String line : lines) {
            String[] data = line.split("; ");
            packages.put(Integer.parseInt(data[0]),
                    new Package(Integer.parseInt(data[0]), Double.parseDouble(data[1]), data[2], data[3]));
        }
        System.out.println(packages);

    }

    public Package getPackageByID(int ID) {
        return packages.get(ID);
    }

    public void printAllPackageInfo() {
        for (int id : packages.keySet()) {
            System.out.println(packages.get(id));
        }
    }

    public double calculateShippingCost(ShippingCostCalculator calculator, Package pkg) {
        return calculator.calculateShippingCost(pkg);
    }
    public void printAllPackagesToFile(String fileName) {
        try (FileWriter writer = new FileWriter(fileName)) {
            for (Package pkg : packages.values()) {
                writer.write(pkg.toString() + "\n");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
}
