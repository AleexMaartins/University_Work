package lab12.ex5;

import java.io.IOException;
import java.nio.file.*;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.HashMap;
import java.util.Map;

public class SizeFileVisitor extends SimpleFileVisitor<Path> {
    private final Map<Path, Long> sizeMap = new HashMap<>();
    private Path currentDir;
    private boolean recursive;

    public SizeFileVisitor(boolean recursive) {
        this.recursive = recursive;
    }

    public Map<Path, Long> getSizeMap() {
        return sizeMap;
    }

    @Override
    public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) {
        if (!recursive && dir != currentDir) {
            return FileVisitResult.SKIP_SUBTREE;
        }
        currentDir = dir;
        sizeMap.put(dir, 0L);
        return FileVisitResult.CONTINUE;
    }

    @Override
    public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) {
        long size = attrs.size();
        sizeMap.put(file, size);
        sizeMap.put(currentDir, sizeMap.get(currentDir) + size);
        return FileVisitResult.CONTINUE;
    }

    @Override
    public FileVisitResult visitFileFailed(Path file, IOException exc) {
        System.err.println("Failed to visit file: " + file + " (" + exc.getMessage() + ")");
        return FileVisitResult.CONTINUE;
    }

    @Override
    public FileVisitResult postVisitDirectory(Path dir, IOException exc) {
        if (exc == null) {
            currentDir = dir.getParent();
            return FileVisitResult.CONTINUE;
        } else {
            throw new RuntimeException("Directory visit failed: " + dir, exc);
        }
    }
}
