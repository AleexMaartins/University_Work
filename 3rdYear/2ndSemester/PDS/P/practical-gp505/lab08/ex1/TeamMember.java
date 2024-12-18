package lab08.ex1;


class TeamMember extends EmployeeDecorator {
    public TeamMember(BasicEmployee employee) {
        super(employee);
    }

    public void collaborate() {
        System.out.println("Collaborating");
    }
}

