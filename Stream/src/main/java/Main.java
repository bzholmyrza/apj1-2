import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.DoubleUnaryOperator;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) {
        List<User> users = new ArrayList<>();
        users.add(new User("Beibarys", 19));
        users.add(new User("Amiran", 18));
        users.add(new User("Beibarys2", 19));
        users.add(new User("Amiran2", 18));
        users.add(new User("Miras", 21));
        users.add(new User("Aru", 18));
        users.add(new User("Sungat", 20));
        users.add(new User("Madi", 22));

        users.stream()
                .sorted(Comparator.comparing(User::getName))
                .filter(user -> user.getAge() < 40)
                .limit(3)
                .map(User::getName)
                .forEach(System.out::println);
    }
}
