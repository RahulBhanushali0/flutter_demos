import 'package:get/get.dart';

import '../controller/home_controller.dart';

class ScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
