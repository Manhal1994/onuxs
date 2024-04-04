import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onuxs/core/colors.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 22.h,
        ),
        Text(
          "Your Choice",
          style: TextStyle(
              fontFamily: "montserrat",
              letterSpacing: 1.1,
              color: primaryColor,
              fontSize: 32.sp,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 64.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/img_1.png",
                  width: 196.w,
                  height: 395.h,
                ),
                SizedBox(height: 18.h),
                Text(
                  "Drink",
                  style: TextStyle(
                      fontFamily: "montserrat",
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  "assets/images/img_2.png",
                  width: 214.w,
                  height: 216.w,
                ),
                SizedBox(height: 18.h),
                Text(
                  "Cookies",
                  style: TextStyle(
                      fontFamily: "montserrat",
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
