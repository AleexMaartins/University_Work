package lab07.ex1;

public class NewDB implements INewDB{
    private Database db;
    private Registos regis;

    public NewDB() {
        db = new Database();
        regis = new Registos();
    }

    @Override
    public boolean addWorker(Worker e) {
        regis.insere(new Empregado(e.getName(), null, e.getEmpNum(), e.getSalary()));
        return db.addEmployee(new Employee(e.getName(), e.getEmpNum(), e.getSalary()));
    }

    @Override
    public void removeWorker(int empNumber) {
        regis.remove(empNumber);
        db.deleteEmployee(empNumber);
    }

    @Override
    public boolean workerExists(int empNumber) {
        return regis.isEmpregado(empNumber);
    }

    @Override
    public void printWorkers() {
        for (Empregado e : regis.listaDeEmpregados()) {
            System.out.printf("Worker %s %d Salary: %.2f/n", e.nome(), e.codigo(), e.salario());
        }
    }


    
}
