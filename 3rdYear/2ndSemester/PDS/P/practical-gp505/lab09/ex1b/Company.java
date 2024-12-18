package lab09.ex1b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class Company {

	public static User user;
	private List<Employee> emps = new ArrayList<>();

	
	public void paySalaries(int month) {
		for (Employee e : emps) {
			BankAccount ba = e.getPerson().getBankAccount();
			ba.deposit(e.getSalary());
		}
	}
	
	public List<Employee> employees() {
		return Collections.unmodifiableList(emps);
	}

	public void admitEmployee(Person person, int salary) {
		Employee e = new Employee(person, salary);
		emps.add(e);
	}
}