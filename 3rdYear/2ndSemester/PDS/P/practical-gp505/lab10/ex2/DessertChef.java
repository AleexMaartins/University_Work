package lab10.ex2;

public class DessertChef extends Chef {
    @Override
    protected boolean canCook(String request) {
        return request.contains("dessert") || request.contains("ice cream");
    }

    @Override
    protected void cook(String request) {
        System.out.println("DessertChef: Starting to cook " + request + ". Out in 17 minutes!");
    }
}
