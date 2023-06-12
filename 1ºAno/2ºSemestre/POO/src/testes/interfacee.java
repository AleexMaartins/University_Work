@FunctionalInterface
public interface interfacee<T, U, V> {
    public V apply(T t, U u);
    default void count() {
        // increment counter
    }
}
