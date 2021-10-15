package AnimalClasses;

import AbstractClasses.Bird;
import Interfaces.Swimable;
import Interfaces.Walkable;

public class Penguin extends Bird implements Swimable, Walkable {
    @Override
    public int getComfortableSpace() {
        return 1;
    }
}
