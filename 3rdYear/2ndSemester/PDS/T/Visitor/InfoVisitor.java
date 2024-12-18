packages Visitor;
public class InfoVisitor implements Visitor {
    public void visit(Circle circle) {
        System.out.println("This is a circle with radius " + circle.radius);
    }

    public void visit(Rectangle rectangle) {
        System.out.println("This is a rectangle with width " + rectangle.width + " and height " + rectangle.height);
    }
}