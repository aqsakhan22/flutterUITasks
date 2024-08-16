




import 'package:airbnb_redesign_ui/pages/home.dart';
import 'package:airbnb_redesign_ui/realstate/pages/authentication.dart';
import 'package:airbnb_redesign_ui/realstate/pages/filters.dart';
import 'package:airbnb_redesign_ui/realstate/pages/search_result.dart';
import 'package:airbnb_redesign_ui/realstate/pages/welcome.dart';
import 'package:airbnb_redesign_ui/realstate/utils/constants.dart';
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

          //initialRoute: "/",
          // for real state /authentication
          initialRoute: "/authentication",
          onGenerateRoute: _onGenerateRoute3,
        ),
      );
  }
}

// airnb
// Route<dynamic> _onGenerateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case "/":
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return Home(); //To be created
//       });
//     default:
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return Home(); //To be created
//       });
//   }
// }

// language
// Route<dynamic> _onGenerateRoute1(RouteSettings settings) {
//   switch (settings.name) {
//     case "/":
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return Home();
//       });
//     case "/create-account":
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return CreateAccount();
//       });
//     case "/choose-language":
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return ChooseLanguage();
//       });
//     case "/dashboard":
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return Dashboard();
//       });
//     case "/lesson-screen":
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return LessonScreen();
//       });
//     default:
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return Home();
//       });
//   }
// }

// laundry
// Route<dynamic> _onGenerateRoute2(RouteSettings settings) {
//   switch (settings.name) {
//     case "/":
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return Home();
//       });
//     case "/login":
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return Login();
//       });
//     case "/dashboard":
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return Dashboard();
//       });
//     case "/single-order":
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return SingleOrder();
//       });
//     default:
//       return MaterialPageRoute(builder: (BuildContext context) {
//         return Home();
//       });
//   }
// }

Route<dynamic> _onGenerateRoute3(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
    case "/welcome":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Welcome();
      });
    case "/authentication":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Authentication();
      });
    case "/search-result":
      return MaterialPageRoute(builder: (BuildContext context) {
        return SearchResult();
      });

    case "/filters":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Filters();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
  }
}
