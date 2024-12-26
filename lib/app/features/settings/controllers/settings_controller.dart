import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/core/enum/response_state.dart';
import 'package:pantera/app/features/auth/domain/use_cases/update_data_user.dart';
import '../../../core/constant/router_const.dart';
import '../../../core/helpers/shared_pref_helper.dart';
import '../../auth/domain/entities/user_entity.dart';
import '../../auth/domain/use_cases/fetch_data_user.dart';

class SettingsController extends GetxController {
  final FirebaseAuth auth;
  final FetchDataUser fetchUserUseCase;
  final UpdateDataUser updateUserUseCase;

  SettingsController({
    required this.auth,
    required this.fetchUserUseCase,
    required this.updateUserUseCase,
  });

  Rx<UserEntity?> user = Rx<UserEntity?>(null);

  var responseState = ResponseState.init.obs;

  late TextEditingController emailController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController phoneController;

  @override
  void onInit() {
    super.onInit();

    emailController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneController = TextEditingController();

    fetchDataUser();
  }

  Future<void> logout() async {
    await auth.signOut();
    Get.offAllNamed(RouterConst.login);
  }

  Future<void> fetchDataUser() async {
    final uid = SharedPrefHelper().getUid();
    final fetchedUser = await fetchUserUseCase.fetchDataUser(uid!);
    user.value = fetchedUser;

    emailController.text = fetchedUser.email;
    firstNameController.text = fetchedUser.firstName;
    lastNameController.text = fetchedUser.lastName;
    phoneController.text = fetchedUser.phone;
  }

  Future<void> updateProfile(
      String firstName, String lastName, String phone) async {
    responseState.value = ResponseState.loading;
    update();

    try {
      final uid = SharedPrefHelper().getUid();
      await updateUserUseCase.updateDataUser(uid!, {
        'firstName': firstName,
        'lastName': lastName,
        'phone': phone,
      });
      responseState.value = ResponseState.success;
    } catch (e) {
      responseState.value = ResponseState.failed;
      throw Exception(e);
    } finally {
      update();
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    super.onClose();
  }
}
