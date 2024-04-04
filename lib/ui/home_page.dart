import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:onuxs/ui/home_page_controller.dart';
import 'package:onuxs/ui/widgets/bottom_navigation.dart';
import 'package:onuxs/ui/widgets/card/category_card.dart';
import 'package:onuxs/ui/widgets/header_widget.dart';
import 'package:onuxs/ui/widgets/location_widget.dart';
import 'package:onuxs/ui/widgets/order_widget.dart';
import 'package:onuxs/ui/widgets/time_widget.dart';
import '../core/colors.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'widgets/fb_order_widdget.dart';

class HomePage extends StatefulWidget {
  final String hour;
  final String minute;
  final String format;
  const HomePage(
      {super.key,
      required this.format,
      required this.hour,
      required this.minute});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final HomePageController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
      FBOrderWidget(_controller),
      bottomNavigationBar: const BottomNavigation(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(controller: _controller),
              Obx(() => _controller.showOrder.value
                  ? const OrderWidget()
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  _controller.selectCategoryState.value = 1;
                                },
                                child: Obx(() {
                                  return CategoryCard(
                                    selected:
                                        _controller.selectCategoryState.value ==
                                            1,
                                    image: "assets/images/pick_icon.svg",
                                    title: "Pick up",
                                    size: Size(88.w, 84.h),
                                  );
                                }),
                              ),
                            ),
                            SizedBox(
                              width: 25.w,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  _controller.selectCategoryState.value = 2;
                                },
                                child: Obx(() {
                                  return CategoryCard(
                                    selected:
                                        _controller.selectCategoryState.value ==
                                            2,
                                    image: "assets/images/word_icon.svg",
                                    title: "Nationwide",
                                    subtitle: "Shipping",
                                    size: Size(126.w, 84.h),
                                  );
                                }),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 22.h,
                        ),
                        Obx(() {
                          return _controller.selectCategoryState.value != null
                              ? LocationWidget(
                                  controller: _controller,
                                )
                              : const SizedBox.shrink();
                        }),
                        Obx(() {
                          return _controller.selectLocationState.value != null
                              ? TimeWidget(_controller)
                              : const SizedBox.shrink();
                        }),
                        Obx(() {
                          return _controller.selectTimeState.value == 2
                              ? Column(
                                  children: [
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(22.r),
                                        ),
                                        child: SizedBox(
                                          height: 50.h,
                                          width: 350.w,
                                          child: Center(
                                            child: Text(
                                              "${widget.hour}:${widget.minute} ${widget.format}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: "Manrope",
                                                  color: primaryColor,
                                                  fontSize: 24.sp,
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 1.1),
                                            ),
                                          ),
                                        )),
                                  ],
                                )
                              : const SizedBox.shrink();
                        })
                      ],
                    )),
              SizedBox(
                height: 50.h,
              )
            ],
          ),
        ),
      )),
    );
  }
}
