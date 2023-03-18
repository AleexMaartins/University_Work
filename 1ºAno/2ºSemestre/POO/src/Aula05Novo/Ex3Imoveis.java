package Aula05Novo;

public class Ex3Imoveis {
    private int number, quartos;
    private String local;
    private double price;
    private boolean disponivel;

    private static int id = 1000;

    public Ex3Imoveis(int quartos, String local, double price, boolean disponivel){
        this.number = id++;
        this.quartos = quartos;
        this.local = local;
        this.price = price;
        this.disponivel = disponivel;

    }
        
    public void setDisponivel(boolean disponivel){
        this.disponivel = disponivel;
    }

    public void setNumber(int number){
        this.number = number;
    }

    public void setQuartos(int quartos){
        this.quartos = quartos;
    }

    public void setLocal(String local){
        this.local = local;
    }

    public void setPrice(double price){
        this.price = price;
    }

    public int getNumber(){
        return number;
    }

    public String getLocal(){
        return local;
    }

    public double getPrice(){
        return price;
    }

    public int getQuartos(){
        return quartos;
    }

    public boolean getDisponivel(){
        return disponivel;
    }
    


    @Override
    public String toString() {
        return "Imóvel: " + number + "; quartos: " + quartos + "; localidade: " + local + "; preço: " + price + "; disponivel: " + disponivel;
    }

    
    



    
}