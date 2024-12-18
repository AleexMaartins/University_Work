package lab11.ex2;

class RealEmployee extends Employee {
	public RealEmployee(String name) {
		this.name = name;
	}
	@Override
	public String getName() {
		return name;
	}
	@Override
	public Boolean isNull() {
		return false;
	}
}
