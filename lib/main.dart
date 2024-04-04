import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onuxs/ui/home_page_controller.dart';

import 'app.dart';

void main() {
  Get.put(HomePageController());
  runApp(const MyApp());
}
