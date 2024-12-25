import 'package:get/get.dart';
import 'package:pantera/app/features/auth/data/repositories/register_impl.dart';
import 'package:pantera/app/features/auth/domain/repositories/register_repository.dart';
import 'package:pantera/app/features/auth/domain/use_cases/register_user.dart';
import '../controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterRepository>(() => RegisterImpl(
          authService: Get.find(),
        ));
    Get.lazyPut(() => RegisterUser(Get.find()));

    Get.lazyPut(() => RegisterController(
          fetchListProvinsi: Get.find(),
          fetchListKabupaten: Get.find(),
          fetchListKecamatan: Get.find(),
          fetchListKelurahan: Get.find(),
          registerUser: Get.find(),
        ));
  }
}
