package AnimalClasses;

import AbstractClasses.Bird;
import Interfaces.Walkable;

public class Ostrich extends Bird implements Walkable {
    @Override
    public int getComfortableSpace() {
        return 1;
    }
}
