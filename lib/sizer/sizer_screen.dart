import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class SizerScreen extends StatefulWidget {
  const SizerScreen({Key? key}) : super(key: key);
  @override
  State<SizerScreen> createState() => _SizerScreenState();
}

class _SizerScreenState extends State<SizerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sizer Screen"),),
      body:
      Column(
        children: [
          Text(
            'Sizer ${Orientation.portrait} ',
            style: TextStyle(fontSize: 15.sp),

            // 15.sp can also be used instead of .dp
            // To know their differences, check #FAQ
          ),
          Orientation.portrait == true
              ? Container(
            color: Colors.red,// Widget for Portrait
            width: 100.w,
            height: 20.5.h,
          )
              : Container(
            color: Colors.orange,// Widget for Landscape
            width: 100.w,
            height: 12.5.h,
          )
        ],
      ),
    );
  }
}
