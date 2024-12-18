package lab07.ex3;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;


class AdvancedPrinter implements AdvancedPrinterInterface {

    private PrinterService spool;

    public AdvancedPrinter() {
        this.spool = new PrinterService();
        new Thread(this.spool).start();
    }

    @Override
    public int print(Document doc) {
        return this.spool.newPrintJob(doc);
    }

    @Override
    public List<Integer> print(List<Document> docs) {
        List<Integer> jobIds = new ArrayList<>();
        for (Document doc : docs) {
            int jobId = this.spool.newPrintJob(doc);
            jobIds.add(jobId);
        }
        return jobIds;
    }

    @Override
    public void showQueuedJobs() {
        LinkedBlockingQueue<PrintJob> printQueue = this.spool.getPrintQueue();
        if (!printQueue.isEmpty()) {
            System.out.println("Spooled jobs:");
            for (PrintJob job : printQueue) {
                System.out.println("  * Job " + job.getId() + ": \"" + job.getDoc().getName().substring(0, Math.min(20, job.getDoc().getName().length())) + "...\"");
            }
        } else {
            System.out.println("No spooled jobs.");
        }
    }

    @Override
    public boolean cancelJob(int jobId) {
        boolean canceled = this.spool.cancelJob(jobId);
        if (canceled) {
            System.out.println("Cancelled Job " + jobId + ": \"" + this.spool.getCancelledJobName() + "\"");
        } else {
            System.out.println("Job " + jobId + " not found in the queue.");
        }
        return canceled;
    }

    @Override
    public void cancelAll() {
        this.spool.cancelAllJobs();
        System.out.println("Cancelled all jobs.");
    }
}