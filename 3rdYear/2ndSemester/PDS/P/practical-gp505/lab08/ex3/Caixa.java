package lab08.ex3;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Caixa implements Component{

    private final String name;
    private final double weight;
    private final List<Component> elements;

    public Caixa(String name, double weight) {
        this.name = name;
        this.weight = weight;
        elements = new ArrayList<>();

    }

    public void add(Component n) {
        elements.add(n);
    }

   

    public void draw() {
        draw(0);
    }

    private void draw(int depth) {
        System.out.println(this);
        Iterator<Component> iterator = elements.iterator();
        while (iterator.hasNext()) {
            Component c = iterator.next();
            System.out.print(new String(new char[depth + 1]).replace("\0", "   "));
            if (c instanceof Caixa) {
                Caixa caixa = (Caixa) c;
                caixa.draw(depth + 1);
            } else {
                System.out.println(c);
            }
        }
    }

    public double getTotalWeight() {
        return weight + getChildrenWeight();
    }

    private double getChildrenWeight() {
        double total = 0;
        Iterator<Component> iterator = elements.iterator();
        while (iterator.hasNext()) {
            Component c = iterator.next();
            if (c instanceof Caixa) {
                Caixa caixa = (Caixa) c;
                total += caixa.getTotalWeight();
            } else {
                total += c.getWeight();
            }
        }
        return total;
    }

    @Override
    public double getWeight() {
        return weight;
    }

    @Override
    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return String.format("* %s '%s' [ Weight : %.1f ; Total: %.1f]", this.getClass()
                .getSimpleName(), name, (float) weight, (float) getTotalWeight());
    }

}