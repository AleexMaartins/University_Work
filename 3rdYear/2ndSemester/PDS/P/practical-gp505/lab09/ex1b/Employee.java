package lab09.ex1b;

class Employee {
	private Person person;
	private double salary;
	
	public Employee(Person person, double s) {
		this.person = person;
		salary = s;
	}

	public double getSalary() {
		return salary;
	}

	public Person getPerson() {
		return this.person;
	}
}