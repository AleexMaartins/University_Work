package lab07.ex1;

import java.util.ArrayList;
import java.util.List;

class Registos { 
    // Data elements 
    private ArrayList<Empregado> empregados; // Stores the employees 
    
    public Registos() { 
     empregados = new ArrayList<>(); 
    }
    
    
    public void insere(Empregado emp) { 
        // Code to insert employee 
        empregados.add(emp);
    } 
    public void remove(long l) { 
        // Code to remove employee 
        empregados.removeIf(emp -> emp.codigo() == l);
    } 
    public boolean isEmpregado(int codigo) { 
        // Code to find employee 
        return empregados.stream().anyMatch(emp -> emp.codigo() == codigo);
    } 
    public List<Empregado> listaDeEmpregados() { 
        // Code to retrieve collection 
        return empregados;
    } 
    
   }
