package lab07.ex3;
import java.util.concurrent.*;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;


class PrinterService implements Runnable {
    private final LinkedBlockingQueue<PrintJob> printQueue;
    private final ExecutorService pool;
    private int jobIdCounter;
    private String cancelledJobName;

    public PrinterService() {
        printQueue = new LinkedBlockingQueue<>();
        pool = Executors.newFixedThreadPool(1);
        jobIdCounter = 0;
    }

    public void run() {
        try {
            for (;;) {
                PrintJob j = printQueue.take();
                pool.submit(j).get();
            }
        } catch (java.util.concurrent.RejectedExecutionException ex) {
            System.out.println("Job rejected by spool: service shutting down?");
        } catch (ExecutionException e) {
            System.out.println("Error");
            e.printStackTrace();
        } catch (InterruptedException ex) {
            this.shutdownAndAwaitTermination();
        }
    }

    public int newPrintJob(Document doc) {
        int jobId = jobIdCounter++;
        printQueue.add(new PrintJob(jobId, doc));
        return jobId;
    }

    public boolean cancelJob(int jobId) {
        for (PrintJob job : printQueue) {
            if (job.getId() == jobId) {
                this.cancelledJobName = job.getDoc().getName();
                printQueue.remove(job);
                return true;
            }
        }
        return false;
    }

    public void cancelAllJobs() {
        printQueue.clear();
    }

    public LinkedBlockingQueue<PrintJob> getPrintQueue() {
        return printQueue;
    }

    public String getCancelledJobName() {
        return cancelledJobName;
    }

    void shutdownAndAwaitTermination() {
        pool.shutdown(); // Disable new tasks from being submitted
        try {
            // Wait a while for existing tasks to terminate
            if (!pool.awaitTermination(60, TimeUnit.SECONDS)) {
                pool.shutdownNow(); // Cancel currently executing tasks
                // Wait a while for tasks to respond to being cancelled
                if (!pool.awaitTermination(60, TimeUnit.SECONDS))
                    System.err.println("Spool did not terminate.");
            }
        } catch (InterruptedException ie) {
            // (Re-)Cancel if current thread also interrupted
            pool.shutdownNow();
            printQueue.clear();
            // Preserve interrupt status
            Thread.currentThread().interrupt();
        }
    }
}