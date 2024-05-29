import 'package:airbnb_redesign_ui/pages/home.dart';
import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      ScreenUtilInit(
        designSize: Size(375, 812),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Airbnb Redesign',
          theme: ThemeData(
            primaryColor: Constants.primaryColor,
            scaffoldBackgroundColor: Color.fromRGBO(229, 229, 229, 1),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: GoogleFonts.playfairDisplayTextTheme(),
          ),
          initialRoute: "/",
          onGenerateRoute: _onGenerateRoute,
        ),
      );
  }
}
Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home(); //To be created
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home(); //To be created
      });
  }
}
