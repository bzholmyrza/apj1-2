package Servlets;

import AnimalClasses.*;
import GenericTypes.Aquarium;
import GenericTypes.Cage;
import GenericTypes.Cell;
import GenericTypes.Habitat;
import Interfaces.Flyable;
import Interfaces.Moveable;
import Interfaces.Swimable;
import Interfaces.Walkable;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/AnimalServlet")
public class AnimalServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String select1 = request.getParameter("habitat");
        int select2 = Integer.parseInt(request.getParameter("animalsNum"));
        int select3 = Integer.parseInt(request.getParameter("sizeOfHabitat"));
        String msg = "";
        String msg2 = "";
        String animal = "";
        int availableSize = 0;
        switch (select1) {
            case "tigers":
                Cage<Walkable> cage = new Cage<>(select3);
                for (int i = 0; i < select2; i++) {
                    msg = cage.addAnimal(new Tiger());
                }
                msg2 = "There is " + select2 + " tigers in " + Cage.class.getSimpleName();
                animal = "tigers";
                availableSize = cage.getHabitatSize();
                break;
            case "wolfs":
                Cage<Walkable> cage2 = new Cage<>(select3);
                for (int i = 0; i < select2; i++) {
                    msg = cage2.addAnimal(new Wolf());
                }
                msg2 = "There is " + select2 + " wolfs in " + Cage.class.getSimpleName();
                animal = "wolfs";
                availableSize = cage2.getHabitatSize();
                break;
            case "birds":
                Cell<Flyable> cell = new Cell<>(select3);
                for (int i = 0; i < select2; i++) {
                    msg = cell.addAnimal(new Crow());
                }
                msg2 = "There is " + select2 + " birds in " + Cell.class.getSimpleName();
                animal = "birds";
                availableSize = cell.getHabitatSize();
                break;
            case "fish":
                Aquarium<Swimable> aquarium = new Aquarium<>(select3);
                for (int i = 0; i < select2; i++) {
                    msg = aquarium.addAnimal(new Shark());
                }
                msg2 = "There is " + select2 + " fish in " + Aquarium.class.getSimpleName();
                animal = "fish";
                availableSize = aquarium.getHabitatSize();
                break;
            case "turtles":
                Aquarium<Swimable> turtles = new Aquarium<>(select3);
                for (int i = 0; i < select2; i++) {
                    msg = turtles.addAnimal(new Shark());
                }
                msg2 = "There is " + select2 + " turtles in " + Aquarium.class.getSimpleName();
                animal = "fish";
                availableSize = turtles.getHabitatSize();
                break;
            case "aquarium":
                Aquarium<Swimable> aquariumAll = new Aquarium<>(select3);
                for (int i = 0; i < select2; i++) {
                    msg = aquariumAll.addAnimal(new Shark());
                }
                msg2 = "There is " + select2 + " fish, turtles in " + Aquarium.class.getSimpleName();
                animal = "fish";
                availableSize = aquariumAll.getHabitatSize();
                break;
        }
        request.setAttribute("msg", msg);
        request.setAttribute("msg2", msg2);
        request.setAttribute("animal", animal);
        request.setAttribute("availableSize", availableSize + "");
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int numAnimals = Integer.parseInt(request.getParameter("numAnimals"));
        int availableSize = Integer.parseInt(request.getParameter("availableSize"));
        String msg3 = "";
        if (availableSize - numAnimals >= 0) {
            msg3 = "Animals was added successfully";
        }else {
            msg3 = "There is no space!!! Too much animals were added";
        }
        request.setAttribute("msg3", msg3);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
