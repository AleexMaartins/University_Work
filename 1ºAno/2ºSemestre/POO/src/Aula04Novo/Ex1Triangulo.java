package Aula04Novo;

public class Ex1Triangulo {
    private double lado1;
    private double lado2;
    private double lado3;
    private double area;
    private double perimetro;

    public Ex1Triangulo(double lado1,double lado2,double lado3){
        this.lado1 = lado1;
        this.lado2 = lado2;
        this.lado3 = lado3;
    }
    
    public double getlado1(){
        return lado1;
    }

    public void setlado1(double lado1){
        this.lado1 = lado1;
    }

    public double getlado2(){
        return lado2;
    }

    public void setlado2(double lado2){
        this.lado2 = lado2;
    }

    public double getlado3(){
        return lado3;
    }

    public void setlado3(double lado3){
        this.lado3 = lado3;
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
        double p = (lado1 + lado2 + lado3) / 2;
        area = Math.sqrt(p * (p - lado1) * (p - lado2) * (p - lado3));
        return area;
    }

    public double calcularPerimetro(){
        perimetro = lado1 + lado2 + lado3;
        return perimetro;
    }

    public void imprimir(){
        System.out.println("Lado 1: " + lado1);
        System.out.println("Lado 2: " + lado2);
        System.out.println("Lado 3: " + lado3);
        System.out.println("Area: " + area);
        System.out.println("Perimetro: " + perimetro);
    }


}
