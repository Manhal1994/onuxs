import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onuxs/ui/home_page.dart';
import 'package:get/get.dart';

class ScheduleTime extends StatefulWidget {
  const ScheduleTime({super.key});

  @override
  ScheduleTimeState createState() => ScheduleTimeState();
}

class ScheduleTimeState extends State<ScheduleTime> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 500), () {
      DatePicker.showTime12hPicker(context,
          showTitleActions: true,
          theme: DatePickerTheme(
              headerColor: Colors.white,
              backgroundColor: Colors.white,
              itemStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              cancelStyle: TextStyle(
                  fontFamily: "Montserrat",
                  color: Colors.black,
                  letterSpacing: 1.1,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp),
              doneStyle: TextStyle(
                  fontFamily: "Montserrat",
                  color: Colors.black,
                  letterSpacing: 1.1,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp)),
          onChanged: (date) {}, onConfirm: (date) {

        Get.to( HomePage(minute: date.minute.toString(),
          hour: date.hour.toString(),
          format: date.hour> 12?"PM":"AM",));
      }, currentTime: DateTime.now(), locale: LocaleType.en);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
    );
  }
}
