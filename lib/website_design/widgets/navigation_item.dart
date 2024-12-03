import 'package:flutter/material.dart';
class NavigationItem extends StatelessWidget {
  final String title;
  const NavigationItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
          color:  Colors.black12
        ),
        child: Text("${title}",style: TextStyle(color: Colors.black),));
  }
}
