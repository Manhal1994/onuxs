import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/colors.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: primaryColor,
        shape: const CircularNotchedRectangle(),
        notchMargin: 4,
        elevation: 0,
        child: SizedBox(
          height: 80.h,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.2.w),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/home_icon.svg",
                            color: grey_1,
                          ),
                          SizedBox(
                            height: 5.8.h,
                          ),
                          const Text(
                            "Home",
                            style:
                            TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 33.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/fav_icon.svg",
                            color: grey_1,
                          ),
                          const Text(
                            "Reward",
                            style:
                            TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/mycart.svg",
                            color: grey_1,
                          ),
                          SizedBox(
                            height: 5.8.h,
                          ),
                          const Text(
                            "My Bag",
                            style:
                            TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 33.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/account_icon.svg",
                            color: grey_1,
                          ),
                          SizedBox(
                            height: 5.8.h,
                          ),
                          const Text(
                            "Account",
                            style:
                            TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ],
                      ),
                    ],
                  )
                ]),
          ),
        ));
  }
}
