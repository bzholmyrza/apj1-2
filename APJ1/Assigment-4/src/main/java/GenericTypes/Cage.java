package GenericTypes;

import Interfaces.Walkable;

public class Cage<T extends Walkable> extends Habitat<T>{
    public Cage(int habitatSize) {
        super(habitatSize);
    }
}