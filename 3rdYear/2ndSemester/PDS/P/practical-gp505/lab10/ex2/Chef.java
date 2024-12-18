package lab10.ex2;

public abstract class Chef {
    protected Chef nextChef;

    public void setNextChef(Chef nextChef) {
        this.nextChef = nextChef;
    }

    public void handleRequest(String request) {
        if (canCook(request.toLowerCase())) {
            cook(request);
        } else {
            System.out.println(this.getClass().getSimpleName() + ": I can't cook that.");
            if (nextChef != null) {
                nextChef.handleRequest(request);
            } else {
                System.out.println("We're sorry but that request can't be satisfied by our service!");
            }
        }
    }

    protected abstract boolean canCook(String request);

    protected abstract void cook(String request);
}
