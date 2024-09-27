import 'package:flutter/material.dart';
import 'package:responsivedesignflutter/sizer/home_page.dart';
import 'package:responsivedesignflutter/sizer/sizer_screen.dart';
import 'package:sizer/sizer.dart';


class MyAppSizer extends StatefulWidget {
  const MyAppSizer({Key? key}) : super(key: key);
  @override
  State<MyAppSizer> createState() => _MyAppSizerState();
}

class _MyAppSizerState extends State<MyAppSizer> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType){
      print("orientation ${orientation.name} ${deviceType.name} ");
      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sizer',
        theme: ThemeData.light(),
        home: HomeScreen()
        //SizerScreen() ,
      );
    });
  }
}