import 'package:airbnb_redesign_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatelessWidget {
  // Our primary button widget [to be reused]
  final Function onPressed;
  final String text;

  PrimaryButton({ required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onPressed();

      },
      child: Container(
        width: double.infinity,
        height: ScreenUtil().setHeight(50.0),
        decoration: BoxDecoration(
          color: Constants.primaryColor,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(169, 176, 185, 0.42),
              spreadRadius: 0,
              blurRadius: 8.0,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: Center(
          child: Text(
            this.text,
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
