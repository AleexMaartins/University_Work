packages Visitor;
public class Main {
public static void main(String[] args) {
    Circle circle = new Circle(5);
    Rectangle rectangle = new Rectangle(3, 4);
    
    InfoVisitor visitor = new InfoVisitor();
    
    circle.accept(visitor);
    rectangle.accept(visitor);
   }
}