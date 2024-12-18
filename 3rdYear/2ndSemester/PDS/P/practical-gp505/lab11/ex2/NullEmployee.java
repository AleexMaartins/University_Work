package lab11.ex2;

class NullEmployee extends Employee {
	public NullEmployee() {
		this.name = "Not Available";
	}
	@Override
	public String getName() {
		return name;
	}
	@Override
	public Boolean isNull() {
		return true;
	}
}