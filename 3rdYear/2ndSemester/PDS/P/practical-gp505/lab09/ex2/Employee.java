package lab09.ex2;

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

	public void createEmployeeCard(){
		System.out.println("Employee card created for " + person.getName());
	}
}