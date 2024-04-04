import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onuxs/ui/home_page.dart';
import 'package:onuxs/ui/schedule_time.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (_, __) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "Manrope",
          primarySwatch: Colors.blue,
        ),
        home: const ScheduleTime(),
      ),
    );
  }
}
