package AnimalClasses;

import AbstractClasses.Animal;
import Interfaces.Walkable;

public class Tiger extends Animal implements Walkable {
    @Override
    public int getComfortableSpace() {
        return 1;
    }
}
