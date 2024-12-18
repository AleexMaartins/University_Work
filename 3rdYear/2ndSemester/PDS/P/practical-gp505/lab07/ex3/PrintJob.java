package lab07.ex3;

import java.util.concurrent.Callable;

class PrintJob implements Callable<Void> {
    private final int id;
    private final Document doc;

    public PrintJob(int id, Document doc) {
        this.id = id;
        this.doc = doc;
    }

    public int getId() {
        return id;
    }

    public Document getDoc() {
        return doc;
    }

    public Void call() {
        System.out.println("Finished Job " + id + ": \"" + doc.getName().substring(0, Math.min(20, doc.getName().length())) + "...\"");
        return null;
    }
}