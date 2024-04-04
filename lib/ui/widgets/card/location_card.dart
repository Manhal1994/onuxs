import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onuxs/data_source/locations.dart';

import '../../../core/colors.dart';

class LocationCard extends StatelessWidget {
  final Location location;
  final bool selected;

  const LocationCard(
      {super.key, required this.location, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: selected ? grey_2 : null,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.r),
          side: selected
              ? BorderSide(color: Colors.black, width: 3.w)
              : BorderSide.none),
      child: Padding(
        padding: EdgeInsets.all(22.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Column(children: [
                  SvgPicture.asset("assets/images/location_icon.svg",
                      semanticsLabel: 'location'),
                  Text(
                    location.distance,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: primaryColor),
                  ),
                  Text("miles",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600,
                          color: primaryColor))
                ]),
                SizedBox(
                  width: 36.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      location.city,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: primaryColor,
                          fontSize: 24.sp),
                    ),
                    Text(location.street,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            color: primaryColor,
                            fontSize: 15.sp)),
                    Text(location.address,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            color: primaryColor,
                            fontSize: 15.sp))
                  ],
                )
              ],
            ),
            Text(
              "1 PM - 9 PM",
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
