package lab07.ex1;

public class Worker {
    private Employee emp;
    private Empregado empreg;

    public Worker(String string, int num, double salario) {
        emp = new Employee(string, num, salario);
        empreg = new Empregado(string, null, num, salario);
        
    }

    public String getName() {
        return emp.getName();
    }

    public int getEmpNum() {
        return empreg.codigo();
    }

    public double getSalary() {
        return emp.getSalary();
    }

}
