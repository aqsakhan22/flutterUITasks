import 'dart:convert';

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
  double parseDouble(){
    return double.parse(this);
  }
// ···
}

extension on String {
  bool get isBlank => trim().isEmpty;
}

extension Greeting on Person {
  String greet() {
    return 'Hello, ${this.name}!';
  }
}

class Person{
   String? name;
   int? _salary;

   int get salary => _salary!;

   void  Setsalary(int value) {
     _salary = value;
   }




  // Person(String name){
  //     name=name;
  // }
  //

   // Person() {
   //   print("This is a default constructor");
   // }

   void changeName(String newValue) {
     name = newValue;

   }

    display(){
     print("My Name is ${name}");
   }

   // Person({String? name,}) {
   //   this.name = name;
   //
   // }
   Person(this.name);
   // here Mobile() is a named constructor
   Person.namedConstructor(this.name);

   // Person.namedConstructor(String name,) {
   //   this.name = name;
   //
   // }
   // Person(this.name);
  // Person({this.name});
  //  Person(String value){
  //    name=value;
  //  }
}

class PersontoJson {
  String? name;
  int? age;

  PersontoJson(this.name, this.age);

  PersontoJson.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }

  PersontoJson.fromJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    name = json['name'];
    age = json['age'];
  }
}


/*extension <extension name>? on <type> { // <extension-name> is optional
  (<member definition>)* // Can provide one or more <member definition>.
}
content_copy
*/