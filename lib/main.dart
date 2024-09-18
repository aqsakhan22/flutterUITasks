import 'package:flutter/material.dart';
import 'package:responsivedesignflutter/grid_view_ex.dart';
import 'package:responsivedesignflutter/layout_builder.dart';
import 'package:responsivedesignflutter/orientation_checking.dart';
import 'package:responsivedesignflutter/screenSize.dart';
// https://hackernoon.com/creating-responsive-flutter-app-layouts-for-all-screen-sizes
// https://stackoverflow.com/questions/53612200/flutter-how-to-give-height-to-the-childrens-of-gridview-builder
void main() {
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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GridviewEx()

      // Responsive(
      //   mobile: Text("Mobile"),
      //   desktop: Text("Desktop"),
      //   tablet: Text("Tabllet"),
      // ),
    );
  }
}

