import 'package:flutter/material.dart';
import 'package:flutteruitask/carousel/example.dart';
import 'package:flutteruitask/listview_example/listView_example.dart';
import 'package:flutteruitask/parallex_examples/paralex_Ex.dart';
import 'package:flutteruitask/persistant_shopping_Cart/persistent_shopping_cart.dart';
import 'package:flutteruitask/scroll_animate/custom_animation_ex.dart';
import 'package:flutteruitask/scroll_animate/fade_Example.dart';
import 'package:flutteruitask/scroll_animate/rotate_example.dart';
import 'package:flutteruitask/scroll_animate/slide_example.dart';
import 'package:flutteruitask/scroll_animate/text_example.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

Future<void> main() async{
 // await PersistentShoppingCart().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
      ListviewExample()
      //ParallaxRecipe()
      //TextExamples()
      //SlideExamples()
      //RotateExamples()
      //FadeExamples()
      //CustomAnimationExample()
      //Example()
      //ProductsScreen(),
    );
  }
}

