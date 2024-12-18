package lab08.ex1;
import java.util.Date;
import lab08.ex1.BasicEmployee;
import lab08.ex1.Manager;
import lab08.ex1.TeamMember;
import lab08.ex1.TeamLeader;

public class Main {
    public static void main(String[] args) {
        EmployeeInterface employee = new Manager(new BasicEmployee());     
        EmployeeInterface member = new TeamMember(new BasicEmployee());
        EmployeeInterface leader = new TeamLeader(new BasicEmployee());
        

        employee.start(new Date());
        employee.work();
        ((Manager)employee).manage();
        ((TeamMember)member).collaborate(); // Changed from employee to member
        ((TeamLeader)leader).plan(); // Changed from employee to leader
        employee.terminate(new Date());
    }
}