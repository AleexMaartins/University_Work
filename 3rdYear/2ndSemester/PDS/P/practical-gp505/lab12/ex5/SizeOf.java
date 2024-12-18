package lab12.ex5;

import java.io.IOException;
import java.nio.file.*;
import java.util.Map;

public class SizeOf {

    public static void main(String[] args) {
        if (args.length < 1 || args.length > 2) {
            System.err.println("Usage: java -jar sizeOf.jar [-r] <directory>");
            System.exit(1);
        }

        boolean recursive = false;
        Path rootDir;

        if (args.length == 2 && args[0].equals("-r")) {
            recursive = true;
            rootDir = Paths.get(args[1]);
        } else {
            rootDir = Paths.get(args[0]);
        }

        SizeFileVisitor visitor = new SizeFileVisitor(recursive);
        try {
            Files.walkFileTree(rootDir, visitor);
        } catch (IOException e) {
            System.err.println("Error walking file tree: " + e.getMessage());
            System.exit(1);
        }

        Map<Path, Long> sizeMap = visitor.getSizeMap();
        long totalSize = 0;

        for (Map.Entry<Path, Long> entry : sizeMap.entrySet()) {
            System.out.println(entry.getKey() + ": " + (entry.getValue() / 1024) + " kB");
            totalSize += entry.getValue();
        }

        System.out.println("Total: " + (totalSize / 1024) + " kB");
    }
}
