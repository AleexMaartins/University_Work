package lab10.ex2;

public class PizzaChef extends Chef {
    @Override
    protected boolean canCook(String request) {
        return request.contains("pizza");
    }

    @Override
    protected void cook(String request) {
        System.out.println("PizzaChef: Starting to cook " + request + ". Out in 7 minutes!");
    }
}
