import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutteruitask/interview_questions_example/string_apis.dart' ;
// if we want to hide
// import 'package:flutteruitask/interview_questions_example/string_apis.dart' hide NumberParsing;
class ExtensionExample extends StatelessWidget {
  const ExtensionExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('42'.parseInt());
    print('42'.padLeft(5));
    print('42'.parseDouble());
    print(NumberParsing('100').parseInt());
     Person person = Person("s");

    // Person person=new Person(name: "aqsa");
    person.display();
    person.name="khan";

    String jsonString1 = '{"name": "Bishworaj", "age": 25}';
    PersontoJson p1 = PersontoJson.fromJsonString(jsonString1);
    print("Person 1 name: ${p1.name}");
    print("Person 1 age: ${p1.age}");

    // Person person=new Person(name: 'aqsa');
    //  person.changeName("khan");
    person.display();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EXTENSION EXAMPLE"
        ),
      ),
      body:   Stack(
        alignment: Alignment.center,
        children: [
          // Animation 2

          // Animation 1

          // Branding
          Positioned(
            bottom: 5,
            child: Text(
              "Hellooooooo",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          // Center(
          //     child: Image.asset(
          //       "assets/img.png",
          //       width: 100,
          //     ))
          //     .animate()
          //     .fadeIn(duration: 3000.ms)
          //     .then(delay: 1200.ms)
          //     .slideX(end: -0.2, duration: 2000.ms),

          Center(
              child: Image.asset(
                "assets/img.png",
                width: 100,
              ))
              .animate()
              .fadeIn(duration: 3000.ms)
              .then(delay: 1200.ms)
              .slideX(end: -0.2,   duration: 2000.ms)
              .callback(
              duration: 600.ms,
              callback: (_) {
                // setState(() {
                //   isDone = true;
                // });
              })



        ],
      ),
    //   Column(
    //     children: [
    //       Text("hello",),
    //
    //       ElevatedButton(onPressed: ()
    //       {
    //         var age = 22;
    //         assert(age!=22, "Age must be 22");
    //       }, child: Text("Check assert")),
    //
    //       Text("Hello").animate()
    //           .fadeIn(duration: 700.ms)
    //           .then(delay: 200.ms) // baseline=800ms
    //           .slide(),
    //
    //       Text("Hello World Rotate").animate().rotate(),
    //       Text("Hello World Fade ").animate().fade(),
    //
    //     ]
    // )

    );
  }
}
