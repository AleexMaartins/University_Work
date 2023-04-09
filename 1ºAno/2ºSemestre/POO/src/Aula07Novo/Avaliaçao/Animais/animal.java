public class animal {
    private int id;
    private String name;
    private int weight;
    private int age;
    private String godfather;

    public animal(int id, String name, int weight, int age, String godfather ) {
        this.id = id;
        this.name = name;
        this.weight = weight;
        this.age = age;
        this.godfather = godfather;
    }
    public animal(int id, String name, int weight, int age) {
        this.id = id;
        this.name = name;
        this.weight = weight;
        this.age = age;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGodfather() {
        return godfather;
    }

    public void setGodfather(String godfather) {
        this.godfather = godfather;
    }

    @Override
    public String toString() {
        return "animal [id=" + id + ", name=" + name + ", weight=" + weight + ", age=" + age + ", godfather="
                + godfather + "]";
    }

}
