package lab10.ex1;

import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;

public class VectorGeneric<T> {
    private T[] vec;
    private int nElem;
    private static final int ALLOC = 50;
    private int dimVec = ALLOC;
    @SuppressWarnings("unchecked")
    public VectorGeneric() {
        vec = (T[]) new Object[dimVec];
        nElem = 0;
    }

    public boolean addElem(T elem) {
        if (elem == null) return false;
        ensureSpace();
        vec[nElem++] = elem;
        return true;
    }

    private void ensureSpace() {
        if (nElem >= dimVec) {
            dimVec += ALLOC;
            @SuppressWarnings("unchecked") 
            T[] newArray = (T[]) new Object[dimVec];
            System.arraycopy(vec, 0, newArray, 0, nElem);
            vec = newArray;
        }
    }

    public boolean removeElem(T elem) {
        for (int i = 0; i < nElem; i++) {
            if (vec[i].equals(elem)) {
                if (nElem - i - 1 > 0) // not last element
                    System.arraycopy(vec, i + 1, vec, i, nElem - i - 1);
                vec[--nElem] = null; // libertar último objecto para o GC
                return true;
            }
        }
        return false;
    }

    public int totalElem() {
        return nElem;
    }

    public T getElem(int i) {
        return vec[i];
    }

// -------------- start of exercise

    public Iterator<T> Iterator() {
        return new VectorIterator<>();
    }

    public ListIterator<T> listIterator() {
        return new VectorListIterator<>();
    }

    public ListIterator<T> listIterator(int index) { // start at index
        return new VectorListIterator<>(index);
    }


// -------------- class creation

    private class VectorIterator<E> implements Iterator<E> {

        private int index;

        VectorIterator() {
            index = 0;
        }

        @Override
        public boolean hasNext() {
            return index < nElem;
        }

        @SuppressWarnings("unchecked") // tells the compiler that I believe the code is safe and won't cause unexpected exceptions
        @Override
        public E next() {
            if (hasNext()) {
                return (E) vec[index++];
            }
            throw new NoSuchElementException("Invalid index: Collection only has " + nElem + " elements");
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

    }
// --------------

    private class VectorListIterator<E> implements ListIterator<E> {

        private int index;

        public VectorListIterator() {
            index = 0;
        }

        public VectorListIterator(int index) {
            this.index = index;
        }

        @Override
        public boolean hasNext() {
            return index < nElem;
        }

        @SuppressWarnings("unchecked") 
        @Override
        public E next() {
            if (hasNext()) {
                return (E) vec[index++];
            }
            throw new NoSuchElementException("Invalid index: Collection has only " + nElem + " elements");
        }

        @Override
        public boolean hasPrevious() {
            return index > 0;
        }

        @SuppressWarnings("unchecked")
        @Override
        public E previous() {
            if (hasPrevious()) {
                return (E) vec[index--];
            }
            throw new NoSuchElementException("Invalid index: Must be higher than 0");
        }

        @Override
        public int nextIndex() {
            return index + 1;
        }

        @Override
        public int previousIndex() {
            return index - 1;
        }

        @Override
        public void remove() {
            VectorGeneric.this.removeElem(VectorGeneric.this.getElem(index));
        }

        @Override
        public void set(E e) {
            throw new UnsupportedOperationException();
        }

        @SuppressWarnings("unchecked")
        @Override
        public void add(E e) {
            VectorGeneric.this.addElem((T)e);
        }
    }

}