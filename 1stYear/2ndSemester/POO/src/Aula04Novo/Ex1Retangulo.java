package Aula04Novo;

public class Ex1Retangulo {
    private double comprimento;
    private double altura;
    private double area;
    private double perimetro;

    public Ex1Retangulo(double comprimento, double altura){
        this.comprimento = comprimento;
        this.altura = altura;
    }

    public double getComprimento(){
        return comprimento;
    }

    public void setComprimento(double comprimento){
        this.comprimento = comprimento;
    }

    public double getAltura(){
        return altura;
    }

    public void setAltura(double altura){
        this.altura = altura;
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
        area = comprimento * altura;
        return area;
    }

    public double calcularPerimetro(){
        perimetro = 2 * (comprimento + altura);
        return perimetro;
    }

    public void imprimir(){
        System.out.println("comprimento: " + comprimento);
        System.out.println("Altura: " + altura);
        System.out.println("Area: " + area);
        System.out.println("Perimetro: " + perimetro);
    }
}
