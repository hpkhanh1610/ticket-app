import 'package:get/get.dart';

class ExpandedTextController extends GetxController {
  var isExpanded = false.obs;

  void onToggleExpanded() {
    isExpanded.value = !isExpanded.value;
  }
}
