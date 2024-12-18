package lab07.ex3;
import java.util.ArrayList;
import java.util.List;

class BasicPrinterAdapter implements AdvancedPrinterInterface {

    private BasicPrinter basicPrinter;

    public BasicPrinterAdapter() {
        this.basicPrinter = new BasicPrinter();
    }

    @Override
    public int print(Document doc) {
        String[] content = {doc.getName()};
        if (basicPrinter.print(content)) {
            return 0; // Job ID is not relevant for BasicPrinter
        } else {
            return -1; // Indicate failure
        }
    }

    @Override
    public List<Integer> print(List<Document> docs) {
        List<Integer> jobIds = new ArrayList<>();
        for (Document doc : docs) {
            String[] content = {doc.getName()};
            if (basicPrinter.print(content)) {
                // Assume all jobs succeed, so no specific job ID is returned
                jobIds.add(0); // Job ID is not relevant for BasicPrinter
            }
        }
        return jobIds;
    }

    @Override
    public void showQueuedJobs() {
        // BasicPrinter doesn't have a queue, so this method does nothing
    }

    @Override
    public boolean cancelJob(int jobId) {
        // BasicPrinter doesn't support canceling jobs, so always return false
        return false;
    }

    @Override
    public void cancelAll() {
        // BasicPrinter doesn't have a queue, so this method does nothing
    }
}