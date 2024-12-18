packages Visitor;
public class Circle implements Shape {
    int radius;

    Circle(int radius) {
        this.radius = radius;
    }

    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
