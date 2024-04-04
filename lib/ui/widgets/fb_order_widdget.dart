import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:onuxs/ui/home_page_controller.dart';
import '../../core/colors.dart';

class FBOrderWidget extends StatelessWidget {
  final HomePageController _controller;
  const FBOrderWidget( this._controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        width: _controller.selectTimeState.value == null ? 102.h : 130.h,
        height: _controller.selectTimeState.value == null ? 102.h : 130.h,
        child: FloatingActionButton(
          backgroundColor: _controller.selectTimeState.value != null
              ? grey_1
              : primaryColor,
          onPressed: () {
            if(_controller.selectTimeState.value!=null) {
              _controller.showOrder.value = true;
              _controller.selectTimeState.value = null;
            }

          },
          tooltip: 'Show time',
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/order_icon.svg",
                  width:
                  _controller.selectTimeState.value != null ? 65.h : 52.h,
                  height:
                  _controller.selectTimeState.value != null ? 65.h : 52.h,
                  color: _controller.selectTimeState.value != null
                      ? Colors.black
                      : grey_1,
                  semanticsLabel: 'A red up arrow'),
              SizedBox(
                height: 7.7.h,
              ),
              Text(
                _controller.selectTimeState.value != null
                    ? "Order Now"
                    : "Order",
                style: TextStyle(
                    fontFamily: "Manrope",
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: _controller.selectTimeState.value == null
                        ? grey_1
                        : Colors.black),
              )
            ],
          ),
        ),
      );
    });
  }
}
