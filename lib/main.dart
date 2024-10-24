import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutteruitask/QR_examples/GenerateQRCode.dart';
import 'package:flutteruitask/QR_examples/Qr_main.dart';
import 'package:flutteruitask/QR_examples/qr_example1.dart';
import 'package:flutteruitask/QR_examples/qr_example2.dart';
import 'package:flutteruitask/carousel/example.dart';
import 'package:flutteruitask/interview_questions_example/extension_example.dart';
import 'package:flutteruitask/listview_example/listView_example.dart';
import 'package:flutteruitask/parallex_examples/paralex_Ex.dart';
import 'package:flutteruitask/persistant_shopping_Cart/persistent_shopping_cart.dart';
import 'package:flutteruitask/ring_tone.dart';
import 'package:flutteruitask/scroll_animate/custom_animation_ex.dart';
import 'package:flutteruitask/scroll_animate/fade_Example.dart';
import 'package:flutteruitask/scroll_animate/rotate_example.dart';
import 'package:flutteruitask/scroll_animate/scrolling_fab_animaton.dart';
import 'package:flutteruitask/scroll_animate/slide_example.dart';
import 'package:flutteruitask/scroll_animate/text_example.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';
import 'dart:convert';
import 'dart:io';
Future<void> main() async{
 // await PersistentShoppingCart().init();
 //  final jsonData = await Isolate.run(_readAndParseJson);
  runApp(const MyApp());
}

Future<Map<String, dynamic>> _readAndParseJson() async {
  final fileData = await File("filename").readAsString();
  final jsonData = jsonDecode(fileData) as Map<String, dynamic>;
  return jsonData;
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
      RingtoneExample()
      //ExtensionExample()
      //QRCodePlayground()
      //QRMain()
      //GenerateQRCode()
      //QRScreen()
     // ListviewExample()
      //ParallaxRecipe()
      //TextExamples()
      //SlideExamples()
      //RotateExamples()
     // FadeExamples(),
      //ScrollAnimationFab()
      //CustomAnimationExample()
      //Example()
      //ProductsScreen(),
    );
  }
}

