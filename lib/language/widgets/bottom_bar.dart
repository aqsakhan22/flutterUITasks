import 'package:airbnb_redesign_ui/language/constants.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedIconTheme: IconThemeData(
        color: Color.fromRGBO(202, 205, 219, 1),
      ),
      selectedIconTheme: IconThemeData(
        color: Constants.primaryColor,
      ),
      items: [
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.calendar_month,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.edit,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.account_box,
          ),
        ),
      ],
    );
  }
}
