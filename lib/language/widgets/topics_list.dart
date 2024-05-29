import 'package:airbnb_redesign_ui/language/constants.dart';
import 'package:airbnb_redesign_ui/language/widgets/topic_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TopicsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(150.0),
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 15.0,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: Constants.topics.length,
        itemBuilder: (BuildContext context, int index) {
          return TopicCard(
            topic: Constants.topics[index],
          );
        },
      ),
    );
  }
}
