package AnimalClasses;

import AbstractClasses.Animal;
import Interfaces.Walkable;

public class Wolf extends Animal implements Walkable {
    @Override
    public int getComfortableSpace() {
        return 1;
    }
}
