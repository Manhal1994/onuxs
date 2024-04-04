import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onuxs/core/colors.dart';
import 'package:onuxs/ui/home_page_controller.dart';
import '../../data_source/locations.dart';
import 'card/location_card.dart';

class LocationWidget extends StatelessWidget {
  final HomePageController controller;

  const LocationWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Pick Your Location",
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: 32.sp,
              color: primaryColor),
        ),
        SizedBox(
          height: 12.h,
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: locations.length,
            itemBuilder: (context, index) {
              return Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    controller.selectLocationState.value = locations[index].id;
                  },
                  child: Obx(() {
                    return LocationCard(
                      location: locations[index],
                      selected: controller.selectLocationState.value ==
                          locations[index].id,
                    );
                  }),
                ),
              );
            })
      ],
    );
  }
}
