import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
        () => SettingsController(auth: Get.find(), userUseCase: Get.find()));
  }
}
