
import 'package:flutter/material.dart';
import 'package:responsivedesignflutter/sizer/util/constant.dart';
import 'package:responsivedesignflutter/sizer/util/strings.dart';


class FirstPageScreenWithoutSizer extends StatefulWidget {
  @override
  _FirstPageScreenWithoutSizerState createState() => _FirstPageScreenWithoutSizerState();
}

class _FirstPageScreenWithoutSizerState extends State<FirstPageScreenWithoutSizer> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          widMainImg(),
          Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  widTitle(),
                  SizedBox(
                    height: 20,
                  ),
                  widDesc()
                ],
              )),
        ],
      ),
    );
  }

  widMainImg() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Image.asset(Constant.IMG_1, height: MediaQuery.of(context).size.height/2),
    );
  }

  widTitle() {
    return Text(Strings.APP_NAME,
        style:  TextStyle(fontSize: 35.0, color: Colors.black),
    );
  }

  widDesc() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          Strings.APP_DESC,
          textAlign: TextAlign.center,
          style:  TextStyle(fontSize: 35.0, color: Colors.black),
        ));
  }
}