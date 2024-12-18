package lab07.ex1;

public interface INewDB {
    boolean addWorker(Worker e);
    void removeWorker(int empNumber);
    boolean workerExists(int empNumber);
    void printWorkers();
}
