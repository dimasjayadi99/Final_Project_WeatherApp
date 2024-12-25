import 'package:get/get.dart';
import '../../data/repositories/login_impl.dart';
import '../../domain/repositories/login_repository.dart';
import '../../domain/use_cases/login_user.dart';
import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginRepository>(() => LoginImpl(
          mapper: Get.find(),
          authService: Get.find(),
        ));

    Get.lazyPut(() => LoginUser(Get.find()));
    Get.lazyPut(() => LoginController(loginUserUseCase: Get.find()));
  }
}
