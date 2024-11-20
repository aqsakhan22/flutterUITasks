// Rules For Factory Constructors
// Factory constructor must return an instance of the class or sub-class.
// You can’t use this keyword inside factory constructor.
// It can be named or unnamed and called like normal constructor.
// It can’t access instance members of the class.

// enum ShapeType
enum ShapeType { circle, rectangle }
class Person{


  String firstName;
  String lastName;
  Person(this.firstName, this.lastName);
  factory Person.fromJson(Map<String, dynamic> json) => Person(json['fname'], json['lname']);
  // Person.fromJson();

}

// abstract class Shape
abstract class Shape {
  // factory constructor
  factory Shape(ShapeType type) {
    switch (type) {
      case ShapeType.circle:
        return Circle();
      case ShapeType.rectangle:
        return Rectangle();
      default:
        throw 'Invalid shape type';
    }
  }
  // method
  void draw();
}

class Circle implements Shape {
  // implement draw method
  @override
  void draw() {
    print('Drawing circle');
  }
}

class Rectangle implements Shape {
  // implement draw method
  @override
  void draw() {
    print('Drawing rectangle');
  }
}

// void main(){
//   Shape shape = Shape(ShapeType.circle);
//   Shape shape2 = Shape(ShapeType.rectangle);
//   shape.draw();
//   shape2.draw();
// }