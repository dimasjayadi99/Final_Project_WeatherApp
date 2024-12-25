import 'package:get/get.dart';
import 'package:pantera/app/core/constant/router_const.dart';

import '../../../core/helpers/shared_pref_helper.dart';

class IntroductionController extends GetxController {
  Future<void> completeIntroduction() async {
    await SharedPrefHelper().setIsFirst();
    Get.offNamed(RouterConst.login);
  }
}
