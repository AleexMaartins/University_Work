package Aula06;

public class Conjunto {
    private int size;
    private int[] vector;

    public Conjunto() {
        this.size = 0;
        this.vector = new int[1];
    }

    public void insert(int n) {
        if (this.size == this.vector.length)
            this.expandVector(this.vector.length);
        if (!this.contains(n))
            this.vector[this.size++] = n;
    }

    public boolean contains(int n) {
        for (int i = 0; i < this.size; i++) {
            if (this.vector[i] == n)
                return true;
        }
        return false;
    }

    public void remove(int n) {
        int i;
        for (i = 0; i < this.size; i++) {
            if (this.vector[i] == n) {
                this.size--;
                for (int j = i; j < this.size; j++) {
                    this.vector[j] = this.vector[j + 1];
                }
            }
        }

    }

    public String toString() {
        String string = "";
        for (int i = 0; i < this.size; i++) {
            string += this.vector[i] + " ";
        }
        return string;
    }

    public int getByIndex(int i) {
        assert this.size > i;
        return this.vector[i];
    }

    public int size() {
        return this.size;
    }

    public Conjunto combine(Conjunto conjunto) {
        Conjunto result = new Conjunto();
        for (int i = 0; i < this.size; i++) {
            result.insert(this.vector[i]);
        }
        for (int i = 0; i < conjunto.size(); i++) {
            result.insert(conjunto.getByIndex(i));
        }
        return result;
    }

    public Conjunto subtract(Conjunto conjunto) {
        Conjunto result = new Conjunto();
        for (int i = 0; i < this.size; i++) {
            result.insert(this.vector[i]);
        }
        for (int i = 0; i < conjunto.size(); i++) {
            result.remove(conjunto.getByIndex(i));
        }
        return result;
    }

    public Conjunto intersect(Conjunto conjunto) {
        Conjunto result = new Conjunto();
        for (int i = 0; i < this.size; i++) {
            if (conjunto.contains(this.vector[i]))
                result.insert(this.vector[i]);
        }
        return result;
    }

    private void expandVector(int n) {
        int[] newVector = new int[this.vector.length + n];
        for (int i = 0; i < this.vector.length; i++) {
            newVector[i] = this.vector[i];
        }
        this.vector = newVector;
    }

}