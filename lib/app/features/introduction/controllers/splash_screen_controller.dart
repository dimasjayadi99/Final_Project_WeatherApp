import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../../core/constant/router_const.dart';
import '../../../core/helpers/shared_pref_helper.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateBasedOnAuth();
  }

  Future<void> _navigateBasedOnAuth() async {
    final isFirst = SharedPrefHelper().getIsFirst();
    final user = FirebaseAuth.instance.currentUser;

    await Future.delayed(const Duration(seconds: 3));

    if (isFirst) {
      Get.offNamed(RouterConst.introduction);
    } else if (user != null) {
      Get.offNamed(RouterConst.mainPage);
    } else {
      Get.offNamed(RouterConst.login);
    }
  }
}
