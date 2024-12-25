import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:pantera/app/core/enum/response_state.dart';
import 'package:pantera/app/features/auth/domain/use_cases/login_user.dart';
import '../../../../core/exception/firebase_exception.dart';
import '../../../../core/helpers/shared_pref_helper.dart';

class LoginController extends GetxController {
  final LoginUser loginUserUseCase;

  LoginController({required this.loginUserUseCase});

  var responseState = ResponseState.init.obs;
  var message = ''.obs;

  Future<void> login(String emailAddress, String password) async {
    responseState.value = ResponseState.loading;
    update();
    try {
      final data = await loginUserUseCase.loginUser(emailAddress, password);
      await SharedPrefHelper().setUid(data);
      responseState.value = ResponseState.success;
    } on FirebaseAuthException catch (e) {
      final errorMessage = getFirebaseAuthErrorMessage(e.code);
      responseState.value = ResponseState.failed;
      message.value = errorMessage;
    } finally {
      update();
    }
  }
}
