package lab05.ex1;

public class EmailValidator {
    private static final String EMAIL_REGEX = "^[A-Za-z0-9+_.-]+@(.+)$";

    public static boolean isValid(String email) {
        return email.matches(EMAIL_REGEX);
    }
}
