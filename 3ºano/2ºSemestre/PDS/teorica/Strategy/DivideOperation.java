package Strategy;

class DivideOperation implements Strategy {
    public int execute(int a, int b) {
        if (b == 0) {
            throw new ArithmeticException("Division by zero");
        }
        return a / b;
    }
}
