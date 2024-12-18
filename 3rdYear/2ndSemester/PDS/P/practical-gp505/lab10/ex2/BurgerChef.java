package lab10.ex2;

public class BurgerChef extends Chef {
    @Override
    protected boolean canCook(String request) {
        return request.contains("burger");
    }

    @Override
    protected void cook(String request) {
        System.out.println("BurgerChef: Starting to cook " + request + ". Out in 19 minutes!");
    }
}
