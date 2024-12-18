package lab10.ex2;

public class PastaChef extends Chef {
    @Override
    protected boolean canCook(String request) {
        return request.contains("pasta");
    }

    @Override
    protected void cook(String request) {
        System.out.println("PastaChef: Starting to cook " + request + ". Out in 14 minutes!");
    }
}
