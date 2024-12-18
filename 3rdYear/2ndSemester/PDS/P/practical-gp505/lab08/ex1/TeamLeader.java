package lab08.ex1;


class TeamLeader extends EmployeeDecorator {
    public TeamLeader(BasicEmployee employee) {
        super(employee);
    }

    public void plan() {
        System.out.println("Planning");
    }
}