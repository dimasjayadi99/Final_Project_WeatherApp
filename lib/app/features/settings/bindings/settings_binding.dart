import 'package:get/get.dart';
import 'package:pantera/app/features/auth/domain/use_cases/update_data_user.dart';

import '../controllers/settings_controller.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpdateDataUser(userRepository: Get.find()));
    Get.lazyPut(() => SettingsController(
        auth: Get.find(),
        fetchUserUseCase: Get.find(),
        updateUserUseCase: Get.find()));
  }
}
