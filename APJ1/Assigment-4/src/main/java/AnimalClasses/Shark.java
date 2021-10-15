package AnimalClasses;

import AbstractClasses.Fish;
import Interfaces.Swimable;

public class Shark extends Fish implements Swimable {
    @Override
    public int getComfortableSpace() {
        return 1;
    }
}
