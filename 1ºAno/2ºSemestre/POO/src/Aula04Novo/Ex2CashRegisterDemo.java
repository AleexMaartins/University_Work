package Aula04Novo;

import java.util.ArrayList;
import java.util.List;

class Product {
    private String name;
    private double price;
    private int quantity;

    @Override
    public String toString() {
        return "Product [name=" + name + ", price=" + price + ", quantity=" + quantity + "]";
    }

    public Product(String name, double price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public double getTotalValue() {
        return price * quantity;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }
}

class CashRegister {
    private List<Product> listaProdutos;

    public CashRegister() {
        listaProdutos = new ArrayList<>();
    }

    public void addProduct(Product p) {
        listaProdutos.add(p);
    }

    @Override
    public String toString() {
        // print header
        // for each product in productlist
        // print product.tostring
        return "CashRegister [listaProdutos=" + listaProdutos + "]";
    }
}

public class Ex2CashRegisterDemo {

    public static void main(String[] args) {

        // Cria e adiciona 5 produtos
        CashRegister cr = new CashRegister();
        cr.addProduct(new Product("Book", 9.99, 3));
        cr.addProduct(new Product("Pen", 1.99, 10));
        cr.addProduct(new Product("Headphones", 29.99, 2));
        cr.addProduct(new Product("Notebook", 19.99, 5));
        cr.addProduct(new Product("Phone case", 5.99, 1));

        // TO DO: Listar o conteúdo e valor total
        System.out.println(cr);

    }

}