package lab10.ex2;

public class Main {
    public static void main(String[] args) {
        Chef sushiChef = new SushiChef();
        Chef pastaChef = new PastaChef();
        Chef burgerChef = new BurgerChef();
        Chef pizzaChef = new PizzaChef();
        Chef dessertChef = new DessertChef();

        sushiChef.setNextChef(pastaChef);
        pastaChef.setNextChef(burgerChef);
        burgerChef.setNextChef(pizzaChef);
        pizzaChef.setNextChef(dessertChef);

        System.out.println("Can I please get a veggie burger?");
        sushiChef.handleRequest("veggie burger");
        
        System.out.println("\nCan I please get a Pasta Carbonara?");
        sushiChef.handleRequest("Pasta Carbonara");

        System.out.println("\nCan I please get a PLAIN pizza, no toppings?");
        sushiChef.handleRequest("PLAIN pizza, no toppings");

        System.out.println("\nCan I please get a sushi nigiri and sashimi?");
        sushiChef.handleRequest("sushi nigiri and sashimi");

        System.out.println("\nCan I please get a salad with tuna?");
        sushiChef.handleRequest("salad with tuna");

        System.out.println("\nCan I please get a strawberry ice cream and waffles dessert?");
        sushiChef.handleRequest("strawberry ice cream and waffles dessert");
    }
}
