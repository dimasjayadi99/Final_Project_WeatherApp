import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/core/enum/response_state.dart';
import 'package:pantera/app/shared/custom_button.dart';
import 'package:pantera/app/shared/custom_snackbar.dart';
import 'package:pantera/app/shared/custom_text_field.dart';
import 'package:pantera/app/shared/gap.dart';
import '../../../../core/constant/path_const.dart';
import '../../../../core/constant/router_const.dart';
import '../controllers/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    PathConst.illustrationImage4,
                    width: 365,
                  ),
                  const Gap.v(h: 32),
                  Text(
                    "Login Akun",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const Gap.v(h: 8),
                  const Text(
                    'Silahkan masukan email dan password anda!',
                  ),
                  const Gap.v(h: 32),
                  CustomTextField().generalForm('Alamat email', Icons.email,
                      _emailController, TextInputType.emailAddress),
                  const Gap.v(h: 16),
                  CustomTextField().passwordForm('Password', Icons.lock,
                      Icons.visibility_off, _passwordController),
                  const Gap.v(h: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () {}, child: const Text('Lupa password?')),
                    ],
                  ),
                  const Gap.v(h: 32),
                  Obx(() {
                    if (loginController.responseState.value ==
                        ResponseState.loading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return CustomButton().fillButton(context, 'Masuk',
                          () async {
                        if (formKey.currentState!.validate()) {
                          final email = _emailController.text.trim();
                          final password = _passwordController.text.trim();

                          await loginController.login(email, password);
                          if (loginController.responseState.value ==
                              ResponseState.success) {
                            Get.offNamed(RouterConst.mainPage);
                            CustomSnackBar.show(
                                title: 'Berhasil Login ',
                                message: 'Selamat Datang',
                                positive: true);
                          } else {
                            CustomSnackBar.show(
                                title: 'Gagal Login',
                                message: loginController.message.value,
                                positive: false);
                          }
                        }
                      });
                    }
                  }),
                  const Gap.v(h: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 1,
                        height: 1,
                        color: Colors.grey,
                      )),
                      Gap.h(w: 16),
                      Text("Atau"),
                      Gap.h(w: 16),
                      Expanded(
                          child: Divider(
                        thickness: 1,
                        height: 1,
                        color: Colors.grey,
                      )),
                    ],
                  ),
                  const Gap.v(h: 16),
                  CustomButton().outlineButton(context, 'Daftar Akun', () {
                    Get.toNamed(RouterConst.register);
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
