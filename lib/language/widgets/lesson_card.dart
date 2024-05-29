import 'package:airbnb_redesign_ui/language/constants.dart';
import 'package:airbnb_redesign_ui/language/models/lesson_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LessonCard extends StatelessWidget {
  final LessonModel lesson;
  LessonCard({required this.lesson});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(bottom: 10.0),
        padding: EdgeInsets.all(6.0),
        width: double.infinity,
        height: ScreenUtil().setHeight(65.0),
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
        child: Row(
          children: [
            Container(
              height: ScreenUtil().setHeight(55.0),
              width: ScreenUtil().setWidth(55.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(224, 230, 255, 1),
              ),
              child: Image.asset(this.lesson.imagePath!),
            ),
            SizedBox(
              width: 25.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.lesson.title!,
                    style: TextStyle(
                      color: Constants.primaryTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    this.lesson.duration!,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Constants.captionTextColor,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.play_circle,
              color: Constants.primaryColor,
            ),
            SizedBox(
              width: 15.0,
            )
          ],
        ),
      ),
    );
  }
}
