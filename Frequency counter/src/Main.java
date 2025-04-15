import java.util.HashMap;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner kbd = new Scanner(System.in);
        HashMap<String, Integer> frequencyTable = new HashMap<>();

        while (kbd.hasNext()) {
            String word = kbd.next();
            String clean = cleanWord(word);
            if (frequencyTable.get(clean) == null) {
                frequencyTable.put(clean, 1);
            } else {
                frequencyTable.put(cleanWord(word), frequencyTable.get(clean)+1);
            }
        }

        System.out.println(frequencyTable.get("alice"));
    }

    public static String cleanWord(String word) {
        return word.toLowerCase();
    }
}