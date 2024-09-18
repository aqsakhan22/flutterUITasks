
import 'package:flutter/material.dart';
class OrientationChecking extends StatefulWidget {
  const OrientationChecking({Key? key}) : super(key: key);

  @override
  State<OrientationChecking> createState() => _OrientationCheckingState();
}

class _OrientationCheckingState extends State<OrientationChecking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.red,
            height: 200,
          ),
          Container(
            color: Colors.blue,
            height: 200,
            child: Row(
              children: [
                Expanded(

                  child: Container(
                   height: 50,
                    color: Colors.orange,
                  )
                ),
                   Expanded(

                  child:
                  Container(
                    height: 50,
                    color: Colors.green,
                  ),
                ),
                   Expanded(

                  child: Container(
                    height: 50,
                    color: Colors.pink,
                  ),
                ),


              ],
            ),
          ),
          Container(
            color: Colors.green,
            height: 200,
          ),
          Container(
            color: Colors.orange,
            height: 200,
          )
        ],
      ),
    );
  }
}
