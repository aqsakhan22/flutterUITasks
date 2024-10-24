import 'package:airbnb_redesign_ui/language/constants.dart';
import 'package:airbnb_redesign_ui/language/models/course_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CourseCard extends StatelessWidget {
  final CourseModel course;
  CourseCard({required this.course});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(120.0),
      width: ScreenUtil().setWidth(145.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: this.course.color,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Image.asset(course.image!),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 40.0,
            child: Text(
              this.course.name!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Constants.primaryTextColor,
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
