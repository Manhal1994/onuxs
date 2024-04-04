import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/colors.dart';

class TimeCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool selected;

  const TimeCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.selected});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165.w,
      height: 83.h,
      child: Card(
        color: selected ? grey_2 : null,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22.r),
            side: selected
                ? BorderSide(color: Colors.black, width: 3.w)
                : BorderSide.none),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontFamily: "montserrat",
                  color: primaryColor,
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.1),
            ),
            Text(
              subtitle,
              style: TextStyle(
                  fontFamily: "montserrat",
                  color: primaryColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.1),
            )
          ],
        ),
      ),
    );
  }
}
