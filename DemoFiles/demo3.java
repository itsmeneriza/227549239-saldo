import java.util.Scanner;

public class demo3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.print("Enter your name: ");
            String name = scanner.nextLine();

            System.out.print("Enter your age: ");
            String ageInput = scanner.nextLine();

            try {
                int age = Integer.parseInt(ageInput);
                System.out.println("Hello, " + name + "! You are " + age + " years old.");
            } catch (NumberFormatException e) {
                System.out.println("Please enter a valid age.");
            }

            System.out.print("Would you like to try again? (yes/no): ");
            String response = scanner.nextLine().trim().toLowerCase();

            if (!response.equals("yes")) {
                System.out.println("Exiting the program.");
                break;
            }
        }

        scanner.close();
    }
}
