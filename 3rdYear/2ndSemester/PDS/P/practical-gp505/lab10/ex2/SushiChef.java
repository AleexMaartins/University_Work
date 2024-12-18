package lab10.ex2;

public class SushiChef extends Chef {
    @Override
    protected boolean canCook(String request) {
        return request.contains("sushi");
    }

    @Override
    protected void cook(String request) {
        System.out.println("SushiChef: Starting to cook " + request + ". Out in 14 minutes!");
    }
}
