package lab07.ex1;

public class e2Main {
    public static void main(String[] args) {

        Worker e1 = new Worker("João", 223, 2333);
        Worker e2 = new Worker("Maria Manuela", 112, 866);
        Worker e3 = new Worker("Joao Panao", 111, 900);

        NewDB records = new NewDB();
        records.addWorker(e1);
        records.addWorker(e2);
        records.addWorker(e3);
        System.out.println(records.workerExists(112) ? "112 é empregado" : "112 nao é empregado");
        records.removeWorker(e2.getEmpNum());
        System.out.println(records.workerExists(112) ? "112 é empregado" : "112 nao é empregado");

        records.printWorkers();
    }
    
}
