package lab07.ex3;
import java.util.ArrayList;
import java.util.List;

public class PrinterTest {

    private static void pause(long millis) {
        try {
            Thread.sleep(millis);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) throws InterruptedException {
        AdvancedPrinterInterface advancedPrinter = new AdvancedPrinter();
        AdvancedPrinterInterface basicPrinterAdapter = new BasicPrinterAdapter();

        List<Document> docs = new ArrayList<>();
        docs.add(new Document("text1.txt"));
        docs.add(new Document("text2.txt"));
        docs.add(new Document("text3.txt"));

        // Testing AdvancedPrinter
        System.out.println("Spooling 1 document.");
        advancedPrinter.print(docs.get(0)); // print first document only
        pause(2000); // wait for a while

        System.out.println("Spooling 3 documents.");
        advancedPrinter.print(docs);
        advancedPrinter.showQueuedJobs();
        pause(4000); // wait for a while

        System.out.println("Spooling 3 documents.");
        advancedPrinter.print(docs);
        advancedPrinter.cancelJob(6);
        advancedPrinter.showQueuedJobs();
        pause(4000); // wait for a while

        System.out.println("Spooling 3 documents.");
        advancedPrinter.print(docs);
        advancedPrinter.cancelAll();
        advancedPrinter.showQueuedJobs();

        pause(2000); // wait for a while

        // Testing BasicPrinterAdapter
        System.out.println("Spooling 1 document.");
        basicPrinterAdapter.print(docs.get(0)); // print first document only
        pause(2000); // wait for a while

        System.out.println("Spooling 3 documents.");
        basicPrinterAdapter.print(docs);
        // No need to showQueuedJobs or cancel jobs for BasicPrinterAdapter
    }
}