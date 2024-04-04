import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onuxs/core/colors.dart';
import 'package:onuxs/ui/home_page_controller.dart';
import 'card/time_card.dart';
import 'package:get/get.dart';

class TimeWidget extends StatelessWidget {
  final HomePageController _controller;

  const TimeWidget(this._controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Pick Your Time",
          style: TextStyle(
              fontFamily: "Poppins",
              color: primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 32.sp),
        ),
        SizedBox(
          height: 18.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Material(
                  color: Colors.transparent,
                  child: InkWell(
                      onTap: () {
                        _controller.selectTimeState.value = 1;
                      },
                      child: TimeCard(
                        title: "ASAP",
                        subtitle: "(15-20mins)",
                        selected: _controller.selectTimeState.value == 1,
                      )));
            }),
            SizedBox(
              width: 22.w,
            ),
            Obx(() {
              return Material(
                  color: Colors.transparent,
                  child: InkWell(
                      onTap: () {
                        _controller.selectTimeState.value = 2;
                      },
                      child: TimeCard(
                          title: "Schedule",
                          subtitle: "",
                          selected: _controller.selectTimeState.value == 2)));
            })
          ],
        )
      ],
    );
  }
}
