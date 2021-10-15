package AnimalClasses;

import AbstractClasses.Bird;
import Interfaces.Flyable;

public class Crow extends Bird implements Flyable {
    @Override
    public int getComfortableSpace() {
        return 1;
    }
}
