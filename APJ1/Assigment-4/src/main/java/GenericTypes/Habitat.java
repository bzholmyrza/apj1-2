package GenericTypes;
import Interfaces.Moveable;

import java.util.ArrayList;
import java.util.List;

public class Habitat<T extends Moveable> {
    int habitatSize;
    List<T> animals;

    public Habitat(int habitatSize) {
        this.habitatSize = habitatSize;
        animals = new ArrayList<>(habitatSize);
    }

    public int getHabitatSize() {
        return habitatSize;
    }

    public List<T> getAnimals() {
        return animals;
    }

    public String addAnimal(T animal) {
        String msg;
        if (animal.getComfortableSpace() < this.habitatSize) {
            this.animals.add(animal);
            this.habitatSize -= animal.getComfortableSpace();
            msg = "There is available " + habitatSize + " places";
        }
        else {
            msg = ("There is no space!!!");
        }
        return msg;
    }
}
