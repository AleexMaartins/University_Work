package lab09.ex3;

import javax.swing.*;
import lab09.ex3.startypes.StarType;
import java.awt.*;
import java.util.ArrayList;
import java.util.List;

public class Sky extends JPanel {
    private List<StarType> stars = new ArrayList<>();

    public void placeStar(StarType star) {
        stars.add(star);
    }

    @Override
    protected void paintComponent(Graphics graphics) {
        super.paintComponent(graphics);
        for (StarType star : stars) {
            star.draw(graphics);
        }
    }
}