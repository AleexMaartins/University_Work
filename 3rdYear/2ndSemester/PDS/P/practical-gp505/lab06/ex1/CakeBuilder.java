package lab06.ex1;

public interface CakeBuilder {
    void setCakeShape(Shape shape);
    void addCakeLayer();
    void addCreamLayer();
    void addTopLayer();
    void addTopping();
    void addMessage(String m);
    void createCake();
    Cake getCake(); 
}