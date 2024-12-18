package lab08.ex1;

public class Manager extends EmployeeDecorator {
    public Manager(EmployeeInterface employee) {
        super(employee);
    }

    public void manage() {
        System.out.println("Managing");
    }
}