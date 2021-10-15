package GenericTypes;

import Interfaces.Swimable;

public class Aquarium<T extends Swimable> extends Habitat<T> {
    public Aquarium(int habitatSize) {
        super(habitatSize);
    }
}

