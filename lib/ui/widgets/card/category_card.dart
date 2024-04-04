import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onuxs/core/colors.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;
  final String? subtitle;
  final Size size;
  final bool selected;

  const CategoryCard(
      {super.key,
      required this.title,
      this.subtitle,
      required this.image,
      required this.selected,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165.w,
      height: 204.h,
      child: Card(
        color: selected ? grey_2 : null,
        shape: RoundedRectangleBorder(
            side: selected
                ? BorderSide(
                    color: Colors.black,
                    width: 3.w,
                  )
                : BorderSide.none,
            borderRadius: BorderRadius.circular(22.r)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(image, width: size.width, height: size.height),
            SizedBox(
              height: 18.h,
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w700),
            ),
            subtitle != null
                ? Text(
                    subtitle!,
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400),
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
