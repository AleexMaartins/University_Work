package Aula04Novo;

public class Ex1Circulo {
    private double raio;
    private double area;
    private double perimetro;
    
    public Ex1Circulo(double raio){
        this.raio = raio;
    }
    
    public double getRaio(){
        return raio;
    }
    
    public void setRaio(double raio){
        this.raio = raio;
    }
    
    public double getArea(){
        return area;
    }
    
    public void setArea(double area){
        this.area = area;
    }
    
    public double getPerimetro(){
        return perimetro;
    }
    
    public void setPerimetro(double perimetro){
        this.perimetro = perimetro;
    }
    
    public double calcularArea(){
        area = Math.PI * Math.pow(raio, 2);
        return area;
    }
    
    public double calcularPerimetro(){
        perimetro = 2 * Math.PI * raio;
        return perimetro;
    }
    
    public void imprimir(){
        System.out.println("Raio: " + raio);
        System.out.println("Area: " + area);
        System.out.println("Perimetro: " + perimetro);
    }
        
}
