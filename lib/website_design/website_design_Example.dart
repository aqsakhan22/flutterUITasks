
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsivedesignflutter/website_design/widgets/header.dart';
import 'package:responsivedesignflutter/website_design/widgets/nav_bar.dart';
import 'package:responsivedesignflutter/website_design/widgets/navigation_item.dart';
class AspectRatioEx extends StatelessWidget {
  const AspectRatioEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   title: Text("Ecommerce Website"),
      // ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          NavBar(),
          Header()

        ],
      )
    );
  }
}
