package Task1;

public class Car {

    private String make;
    private String model;
    private int year;
    private String bodyStyle;
    private String driver;

    public Car (String make, String model, int year, String bodyStyle, String driver) {

        this.make = make;
        this.model = model;
        this.year = year;
        this.bodyStyle = bodyStyle;
        this.driver = driver;
    }

    @Override
    public String toString() {
        return "The make of the car is: " + make + '\'' +
                ", The model of the car is: " + model + '\'' +
                ", The car was manufactured in: " + year +
                ", The bodystyle of the car is: " + bodyStyle;
    }
}
