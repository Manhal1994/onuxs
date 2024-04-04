import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onuxs/ui/home_page_controller.dart';

class HeaderWidget extends StatelessWidget {
  final HomePageController controller;
  const HeaderWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.w),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: (){
                  controller.showOrder.value = false;
                },
                child: SvgPicture.asset("assets/images/back.svg",
                    semanticsLabel: 'back'),
              ),
            ),
          ),
          Align(
            child: SvgPicture.asset("assets/images/logo.svg",
                semanticsLabel: 'logo'),
          )
        ],
      ),
    );
  }
}
