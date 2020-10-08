package Task2;

import java.util.ArrayList;

public class Main {

    public static void main(String[] args) {

        Room room1 = new Room(4, 2, 2, 0);
        Room room2 = new Room(4,4,8,10);
        Room room3 = new Room(4,1,3,1);

        ArrayList <Room> rooms = new ArrayList();
        rooms.add (room1);
        rooms.add (room2);
        rooms.add (room3);
        //System.out.println(rooms);

        Building building1 = new Building(rooms, 2,3,true);


        int lamps = 0;

        for (Room r: building1.getRooms()) {
            lamps += r.getNumberOfLamps();
        }
        System.out.println(lamps);

    }
}
