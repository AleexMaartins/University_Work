import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class petShelter {

    private ArrayList<animal> animals;
    private Map<Integer, String> godfathers;

    public petShelter() {
        animals = new ArrayList<>();
        godfathers = new HashMap<>();
    }

    public void addAnimal(int id, String type, String name, int weight, int age) {
        switch (type.toLowerCase()) {
            case "dog":
                dog dog = new dog(id, name, weight, age);
                animals.add(dog);
                break;
            case "rabbit":
                rabbit rabbit = new rabbit(id, name, weight, age);
                animals.add(rabbit);
                break;
            case "bird":
                bird bird = new bird(id, name, weight, age);
                animals.add(bird);
                break;
            default:
                System.out.println("Invalid animal type.");
                break;
        }
    }

    public void removeAnimal(int id) {
        for (Animal animal : animals) {
            if (animal.getId() == id) {
                animals.remove(animal);
                return;
            }
        }
        System.out.println("Animal with ID " + id + " not found.");
    }

    public void associateGodfather(int id, String godfatherName) {
        if (godfathers.containsKey(id)) {
            System.out.println("Animal with ID " + id + " already has a godfather.");
        } else {
            godfathers.put(id, godfatherName);
        }
    }

    public void printAnimalInfo(int id) {
        for (Animal animal : animals) {
            if (animal.getId() == id) {
                System.out.println(animal.toString());
                return;
            }
        }
        System.out.println("Animal with ID " + id + " not found.");
    }

    public void showAnimals() {
        for (Animal animal : animals) {
            System.out.println(animal.toString());
        }
    }

    public static void main(String[] args) {
        PetShelter shelter = new PetShelter();
        shelter.addAnimal(1, "dog", "Rex", 20, 3);
        shelter.addAnimal(2, "rabbit", "Bugs", 2, 1);
        shelter.addAnimal(3, "bird", "Tweety", 1, 2);
        shelter.associateGodfather(1, "John");
        shelter.associateGodfather(2, "Jane");
        shelter.printAnimalInfo(1);
        shelter.printAnimalInfo(4);
        shelter.showAnimals();
        shelter.removeAnimal(2);
        shelter.showAnimals();
    }
}
