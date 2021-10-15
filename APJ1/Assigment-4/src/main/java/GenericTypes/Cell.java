package GenericTypes;

import Interfaces.Flyable;

public class Cell<T extends Flyable> extends Habitat<T>{
    public Cell(int habitatSize) {
        super(habitatSize);
    }
}
