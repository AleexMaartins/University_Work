package lab08.ex1;

import java.util.Date;

public class BasicEmployee implements EmployeeInterface {
    @Override
    public void start(Date date) {
        System.out.println("Employee started on " + date);
    }

    @Override
    public void terminate(Date date) {
        System.out.println("Employee terminated on " + date);
    }

    @Override
    public void work() {
        System.out.println("Employee is working");
    }
}
