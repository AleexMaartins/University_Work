package lab09.ex3;

import javax.swing.JFrame;
import java.awt.Color;

public class Demo {
    static int CANVAS_SIZE = 1200;
    static int STARS_TO_DRAW = 1000000;
    
    public static void main(String[] args) {
        JFrame frame = new JFrame();
        Sky sky = new Sky();
        StarFactory factory = new StarFactory();

        char[] starTypes = {'O', 'B', 'A', 'F', 'G', 'K', 'M'};
        char type;

        Runtime runtime = Runtime.getRuntime();
        long before = runtime.totalMemory() - runtime.freeMemory();

        for (int i = 0; i < STARS_TO_DRAW; i++) {
            type = starTypes[random(0, starTypes.length-1)];
            sky.placeStar(factory.getStar(type, random(0, CANVAS_SIZE), random(0, CANVAS_SIZE)));
        }
        sky.setSize(CANVAS_SIZE, CANVAS_SIZE);
        sky.setBackground(Color.BLACK);

        frame.add(sky);
        frame.setSize(CANVAS_SIZE, CANVAS_SIZE);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);

        long after = runtime.totalMemory() - runtime.freeMemory();
        System.out.println("Used memory: " + (after - before) / 1024 / 1024 + " MB");
    }

    private static int random(int min, int max) {
        return min + (int) (Math.random() * ((max - min) + 1));
    }
}