package Task2;

import java.util.ArrayList;

public class Building {

    private ArrayList<Room> Rooms;
    private int numberOfBathrooms;
    private int numberOfFloors;
    private boolean isOfficeBuilding;

    public Building(ArrayList<Room> Rooms, int numberOfBathrooms, int numberOfFloors, boolean isOfficeBuilding) {

        this.Rooms = Rooms;
        this.numberOfBathrooms = numberOfBathrooms;
        this.numberOfFloors = numberOfFloors;
        this.isOfficeBuilding = isOfficeBuilding;
    }

    public int getNumberOfBathrooms() {
        return numberOfBathrooms;
    }

    public int getNumberOfFloors() {
        return numberOfFloors;
    }

    public boolean isOfficeBuilding() {
        return isOfficeBuilding;
    }

    public ArrayList<Room> getRooms() {
        return Rooms;
    }
}
