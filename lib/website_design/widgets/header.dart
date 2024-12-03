import 'package:flutter/material.dart';
class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Expanded(

              child: Container(
                  color: Colors.grey[100],
                  child: Icon(Icons.warning))),
         Expanded(child:  Container(
             padding: EdgeInsets.symmetric(vertical: 50.0),
             child: Text("Lorem ipsum Text will be Here", textAlign: TextAlign.right,))),
        ],
      ),
    );
  }
}
