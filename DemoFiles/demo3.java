import java.util.Scanner;

public class NameAndAge {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Collect user input for name and age
        System.out.print("Enter your name: ");
        String name = scanner.nextLine();

        System.out.print("Enter your age: ");
        String ageInput = scanner.nextLine();

        // Validate the age input
        try {
            int age = Integer.parseInt(ageInput);
            System.out.println("Hello, " + name + "! You are " + age + " years old.");
        } catch (NumberFormatException e) {
            System.out.println("Please enter a valid age.");
        }

        scanner.close();
    }
}