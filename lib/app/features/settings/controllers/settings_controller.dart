import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../core/constant/router_const.dart';

class SettingsController extends GetxController {
  final FirebaseAuth auth;

  SettingsController({required this.auth});

  Future<void> logout() async {
    await auth.signOut();
    Get.offAllNamed(RouterConst.login);
  }
}
