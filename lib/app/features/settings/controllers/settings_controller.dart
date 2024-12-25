import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../../core/constant/router_const.dart';
import '../../../core/helpers/shared_pref_helper.dart';
import '../../auth/domain/entities/user_entity.dart';
import '../../auth/domain/use_cases/fetch_data_user.dart';

class SettingsController extends GetxController {
  final FirebaseAuth auth;
  final FetchDataUser userUseCase;

  SettingsController({required this.auth, required this.userUseCase});

  Rx<UserEntity?> user = Rx<UserEntity?>(null);

  @override
  onInit() {
    super.onInit();
    fetchDataUser();
  }

  Future<void> logout() async {
    await auth.signOut();
    Get.offAllNamed(RouterConst.login);
  }

  Future<void> fetchDataUser() async {
    final uid = SharedPrefHelper().getUid();
    user.value = await userUseCase.fetchDataUser(uid!);
  }
}
