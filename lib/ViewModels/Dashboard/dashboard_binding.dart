import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashoardController());
    // Get.put(HomeController());
    // Get.put(ProductController());
    // Get.put(CategoryController());
    // Get.put(AuthController());
  }
}
