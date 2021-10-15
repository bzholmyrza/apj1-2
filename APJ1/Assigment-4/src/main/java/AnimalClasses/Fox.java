package AnimalClasses;

import AbstractClasses.Animal;
import Interfaces.Walkable;

public class Fox extends Animal implements Walkable {
    @Override
    public int getComfortableSpace() {
        return 1;
    }
}
