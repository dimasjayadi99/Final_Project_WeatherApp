import 'package:get/get.dart';
import 'package:pantera/app/features/introduction/controllers/introduction_controller.dart';

class IntroductionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IntroductionController());
  }
}
