package lab12.ex1;

import java.util.*;

public class Main {
    public static void main(String[] args) {
        List<MobilePhone> phones = new ArrayList<>();

        System.out.println("Start Main ");
        phones.add(new MobilePhone("Exynos Proc.", 799.99, 16, 512));
        phones.add(new MobilePhone("A16 Bionic", 1399.99, 16, 256));
        phones.add(new MobilePhone("Snapdragon", 769.99, 12, 256));

        Sorter sorter = new Sorter();

        sorter.setStrategy(new QuickSortStrategy()); 


        // Sort by price
        System.out.println("\nSort by price");
        sorter.sort(phones, Comparator.comparingDouble(MobilePhone::getPrice));

        // Print sorted list
        for (MobilePhone phone : phones) {
            System.out.println(phone.getProcessor()+"\t\t"+phone.getPrice()+"\t\t"+phone.getRam()+"\t"+phone.getMemory());
        }
        System.out.println();


        // Switch to a different strategy
        sorter.setStrategy(new BubbleSortStrategy());

        // Sort by ram
        System.out.println("\nSort by ram");
        sorter.sort(phones, Comparator.comparingInt(MobilePhone::getRam));

        // Print sorted list
        for (MobilePhone phone : phones) {
            System.out.println(phone.getProcessor()+"\t"+phone.getPrice()+"\t\t"+phone.getRam()+"\t"+phone.getMemory());
        }
    }
}
