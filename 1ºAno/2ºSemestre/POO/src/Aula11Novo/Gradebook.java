import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Gradebook implements IGradeCalculator {
    private Map<String, Student> students;

    public Gradebook() {
        students = new HashMap<>();

    }

    public void load(String file) {
        List<String> content = null;
        try {
            content = Files.readAllLines(Paths.get(file));
        } catch (Exception e) {
            e.printStackTrace();
        }

        for (String line : content) {
            String[] tmp = line.split("\\|");
            List<Double> grades = List.of(Double.parseDouble(tmp[1]), Double.parseDouble(tmp[2]),
                    Double.parseDouble(tmp[3]));
            students.put(tmp[0], new Student(tmp[0], grades));

        }
    }

    public void addStudent(Student newStudent) {
        students.put(newStudent.getName(), newStudent);

    }

    public void removeStudent(String name) {
        students.remove(name);
    }

    public void printAllStudents() {
        for (String name : students.keySet()) {
            String key = name.toString();
            String value = students.get(key).toString();
            System.out.println(value);
        }

    }

    public Student getStudent(String name) {
        return students.get(name);
    }

    public double calculateAverageGrade(String name) {
        Student s = getStudent(name);
        List<Double> grades = s.getGrades();
        return (grades.get(0) + grades.get(1) + grades.get(2)) / 3;
    }

    @Override
    public double calculate(List<Double> grades) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'calculate'");
    }

}