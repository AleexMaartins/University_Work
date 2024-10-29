package Strategy;

class SubtractOperation implements Strategy {
    public int execute(int a, int b) {
        return a - b;
    }
}