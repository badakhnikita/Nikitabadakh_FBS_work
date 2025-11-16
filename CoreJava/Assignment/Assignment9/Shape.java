package Assignment0;

abstract class Shape {
    String color;
    double area;
    double perimeter;

    Shape() {
        System.out.println("Shape default constructor called");
        this.color = "Red";
        this.area = 56;
        this.perimeter = 67;
    }

    Shape(String c, double a, double p) {
        System.out.println("Shape parameterized constructor called");
        this.color = c;
        this.area = a;
        this.perimeter = p;
    }

    void setColor(String c1) {
        this.color = c1;
    }

    void setArea(double a1) {
        this.area = a1;
    }

    void setPerimeter(double p1) {
        this.perimeter = p1;
    }

    String getColor() {
        return this.color;
    }

    double getArea() {
        return this.area;
    }

    double getPerimeter() {
        return this.perimeter;
    }

//    void display() {
//        System.out.println("Color is " + this.color);
//        System.out.println("Area is " + this.area);
//        System.out.println("Perimeter is " + this.perimeter);
//    }
    public String toString()
    {
    	return "\n Color is"+this.color+"\n Area is"+this.area+"\n Perimeter is"+this.perimeter;
    }
    abstract double calarea();
}

class Circle extends Shape {
    double radius;

    Circle() {
        super();
        System.out.println("Circle default constructor called");
        this.radius = 7;
    }

    Circle(String c, double a, double p, double r) {
        super(c, a, p);
        System.out.println("Circle parameterized constructor called");
        this.radius = r;
    }

    void setRadius(double r1) {
        this.radius = r1;
    }

    double getRadius() {
        return this.radius;
    }

//    void display() {
//        super.display();
//        System.out.println("Radius is " + this.radius);
//    }
    public String toString()
    {
    	super.toString();
    	return "\n radius is"+this.radius;
    }
    double calarea()
    {
    	return (3.14*radius*radius);
    }
}

class Rectangle extends Shape {
    double length;
    double width;

    Rectangle() {
        super();
        System.out.println("Rectangle default constructor called");
        this.length = 34;
        this.width = 45;
    }

    Rectangle(String c, double a, double p, double l, double w) {
        super(c, a, p);
        System.out.println("Rectangle parameterized constructor called");
        this.length = l;
        this.width = w;
    }

//    void display() {
//        super.display();
//        System.out.println("Length is " + this.length);
//        System.out.println("Width is " + this.width);
//    }
    public String toString()
    {
    	super.toString();
    	return "\n length is"+this.length+"\nwidth is"+this.width;
    }
    double calarea()
    {
    	return length*width;
    }
}

class Triangle extends Shape {
    double base;
    double height;

    Triangle() {
        super();
        System.out.println("Triangle default constructor called");
        this.base = 34;
        this.height = 45;
    }

    Triangle(String c, double a, double p, double b, double h) {
        super(c, a, p);
        System.out.println("Triangle parameterized constructor called");
        this.base = b;
        this.height = h;
    }

//    void display() {
//        super.display();
//        System.out.println("Base is " + this.base);
//        System.out.println("Height is " + this.height);
//    }
    
    public String toString()
    {
    	super.toString();
    	return "\n Base is"+this.base+"\n height is"+this.height;
    }
    double calarea()
    {
    	return 0.5*base*height;
    }
}

class Test8 {
    public static void main(String[] args) {
    	Shape s1;
    	//s1=new Shape();
    	//System.out.println("area is "+s1.calarea());
        s1 = new Circle();
        System.out.println(s1.toString());

        System.out.println("area is "+s1.calarea());
        s1 = new Circle("Blue", 45, 67, 6);
        System.out.println(s1.toString());
        
        s1 = new Rectangle();
        System.out.println(s1.toString());
        
        s1= new Rectangle("Green", 45, 34, 56, 67);
        System.out.println(s1.toString());
        System.out.println("area is "+s1.calarea());
         s1 = new Triangle();
         System.out.println(s1.toString());
        s1 = new Triangle("Yellow", 56, 35, 78, 89);
        System.out.println(s1.toString());
        System.out.println("area is "+s1.calarea());
    }
}
