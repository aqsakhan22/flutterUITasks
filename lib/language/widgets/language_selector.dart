import 'package:airbnb_redesign_ui/language/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LanguageSelector extends StatelessWidget {
  final bool? isActive;
  final String? language;
  final String? imagePath;
  LanguageSelector({this.isActive, this.language, this.imagePath});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        width: double.infinity,
        height: ScreenUtil().setHeight(83.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(169, 176, 185, 0.42),
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Row(
            children: [
              Image.asset(
                this.imagePath!,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                this.language!,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromRGBO(34, 40, 60, 1),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Container(
                child: isActive!
                    ? Icon(
                        Icons.check_circle,
                        color: Constants.primaryColor,
                      )
                    : SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
