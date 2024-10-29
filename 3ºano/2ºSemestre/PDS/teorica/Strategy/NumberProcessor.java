package Strategy;

class NumberProcessor {
    private Strategy strategy;

    public NumberProcessor(Strategy strategy) {
        this.strategy = strategy;
    }

    public void setOperation(Strategy strategy) {
        this.strategy = strategy;
    }

    public int performOperation(int a, int b) {
        return strategy.execute(a, b);
    }
}
