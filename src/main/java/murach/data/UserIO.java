package murach.data;

import java.io.*;
import murach.business.User;

public class UserIO {

    public static User getUser(String email, String path) {
        User user = null;
        File file = new File(path);

        if (file.exists()) {
            try (BufferedReader in =
                    new BufferedReader(new FileReader(file))) {

                String line = in.readLine();
                while (line != null) {
                    String[] columns = line.split(",");
                    if (columns.length == 3 && columns[0].equals(email)) {
                        String firstName = columns[1];
                        String lastName = columns[2];
                        user = new User(firstName, lastName, email);
                        break;
                    }
                    line = in.readLine();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return user;
    }

    public static void add(User user, String path) {
        try (PrintWriter out =
                new PrintWriter(new FileWriter(path, true))) {

            out.println(user.getEmail() + ","
                    + user.getFirstName() + ","
                    + user.getLastName());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}