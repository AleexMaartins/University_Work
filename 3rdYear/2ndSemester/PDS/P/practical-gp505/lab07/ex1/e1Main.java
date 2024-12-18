package lab07.ex1;

import java.util.List;

public class e1Main {

    public static void main(String[] args) {
        
    System.out.println("----- Sweets -----");
    Employee e1 = new Employee("Alcides Morais", 102022, 2604.76);
    Employee e2 = new Employee("Maria", 13303, 2054.55);
    Employee e3 = new Employee("Tomás Cerca", 104090, 30932.98);
    Database db = new Database();
    db.addEmployee(e1);
    db.addEmployee(e2);
    db.addEmployee(e3);
    db.deleteEmployee(13303);
    Employee[] employees = db.getAllEmployees();
    
    for (Employee e : employees) {
        System.out.println("Name: " + e.getName() + " | Employee Number: " + e.getEmpNum() + " | Salary: " + e.getSalary());
    }
    System.out.println();



    System.out.println("----- Petiscos -----");
    Empregado e4 = new Empregado("João", "Silva", 56032, 12604.76);
    Empregado e5 = new Empregado("Carla", "Santos", 56033, 1362.55);
    Empregado e6 = new Empregado("Rui", "Ferreira", 56034, 2232.98);
    Registos db2 = new Registos();
    db2.insere(e4);
    db2.insere(e5);
    db2.insere(e6);
    System.out.println("Is Employee 56033 in the database? " + db2.isEmpregado(56033));
    db2.remove(56033);
    System.out.println("Is Employee 56033 in the database? " + db2.isEmpregado(56033));
    List<Empregado> empregados = db2.listaDeEmpregados();
    for (Empregado e : empregados) {
        System.out.println("Name: " + e.nome() + " " + e.apelido() + " | Employee Number: " + e.codigo() + " | Salary: " + e.salario());    


    }
}
}
