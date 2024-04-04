import 'package:get/get.dart';

class HomePageController extends GetxController {
  final selectCategoryState = Rx<int?>(null);

  final selectLocationState = Rx<int?>(null);

  final selectTimeState = Rx<int?>(null);

  final showOrder = Rx<bool>(false);
}
