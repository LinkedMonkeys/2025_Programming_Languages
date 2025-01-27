import java.util.HashSet;
import java.util.Set;

public class Main {
    public static void main(String[] args) {
        Set<Point> visited = new HashSet<>();

        Point p = new Point(0, 0);
        visited.add(p);
        p.setX(1);
        p.setY(0);
        visited.add(p);
        visited.add(new Point(2, 0));

        Point p1 = new Point(3, 0);
        Point p2 = new Point(1, 0);
        System.out.println(visited.contains(p1));
        System.out.println(visited.contains(p2));
        System.out.println(visited.contains(new Point(1, 0)));
        System.out.println(visited.contains(p10));
        System.out.println(p10);
        System.out.println(visited);
        System.out.println(p2);
    }
}