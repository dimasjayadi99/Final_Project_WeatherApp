import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/core/constant/style_const.dart';
import 'package:pantera/app/core/enum/response_state.dart';
import 'package:pantera/app/features/auth/domain/entities/user_entity.dart';
import 'package:pantera/app/shared/custom_bottom_sheet.dart';
import 'package:pantera/app/shared/custom_snackbar.dart';
import 'package:pantera/app/shared/custom_text_field.dart';
import '../../../../shared/gap.dart';
import '../controllers/register_controller.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final registerController = Get.find<RegisterController>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _provinsiController = TextEditingController();
  final TextEditingController _kabupatenController = TextEditingController();
  final TextEditingController _kecamatanController = TextEditingController();
  final TextEditingController _kelurahanController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  List<Step> getStep() => [
        Step(
          state: registerController.currentStep.value > 0
              ? StepState.complete
              : StepState.indexed,
          isActive: registerController.currentStep.value >= 0,
          title: const Text("Profile"),
          content: _buildProfileForm(),
        ),
        Step(
          state: registerController.currentStep.value > 1
              ? StepState.complete
              : StepState.indexed,
          isActive: registerController.currentStep.value >= 1,
          title: const Text("Location"),
          content: _buildLocationForm(),
        ),
        Step(
          state: registerController.currentStep.value > 2
              ? StepState.complete
              : StepState.indexed,
          isActive: registerController.currentStep.value >= 2,
          title: const Text("Account"),
          content: _buildAccountForm(),
        ),
      ];

  Widget _buildProfileForm() {
    return Form(
      key: registerController.formKey1,
      child: Column(
        children: [
          CustomTextField().generalForm('Alamat email', Icons.email,
              _emailController, TextInputType.emailAddress),
          const Gap.v(h: 16),
          CustomTextField().generalForm('Nama Depan', Icons.person,
              _firstNameController, TextInputType.text),
          const Gap.v(h: 16),
          CustomTextField().generalForm('Nama Belakang', Icons.person,
              _lastNameController, TextInputType.text),
          const Gap.v(h: 16),
          CustomTextField().generalForm(
              'No.Telp', Icons.phone, _phoneController, TextInputType.number),
        ],
      ),
    );
  }

  Widget _buildLocationForm() {
    return Form(
      key: registerController.formKey2,
      child: Column(
        children: [
          CustomTextField().optionForm(
            'Provinsi',
            _provinsiController,
            true,
            () async {
              if (registerController.listProvinsi.isEmpty) {
                await registerController.fetchProvinsi();
              }

              Get.bottomSheet(CustomButtonSheet(
                title: 'Provinsi',
                items:
                    registerController.listProvinsi.map((e) => e.name).toList(),
                onTap: (index) {
                  final selectedProvinsi =
                      registerController.listProvinsi[index];
                  _provinsiController.text = selectedProvinsi.name;
                  registerController.selectedProvinsiCode.value =
                      selectedProvinsi.code;

                  registerController.listKabupaten.clear();
                  registerController.listKecamatan.clear();
                  registerController.listKelurahan.clear();

                  _kabupatenController.clear();
                  _kecamatanController.clear();
                  _kelurahanController.clear();

                  Get.back();
                },
              ));
            },
          ),
          const Gap.v(h: 16),
          CustomTextField().optionForm('Kabupaten / Kota', _kabupatenController,
              registerController.listProvinsi.isNotEmpty ? true : false,
              () async {
            if (registerController.listKabupaten.isEmpty) {
              await registerController.fetchKabupaten(
                  registerController.selectedProvinsiCode.value);
            }

            Get.bottomSheet(CustomButtonSheet(
              title: 'Kabupaten',
              items:
                  registerController.listKabupaten.map((e) => e.name).toList(),
              onTap: (index) {
                final selectedKabupaten =
                    registerController.listKabupaten[index];
                _kabupatenController.text = selectedKabupaten.name;
                registerController.selectedKabupatenCode.value =
                    selectedKabupaten.code;

                registerController.listKecamatan.clear();
                registerController.listKelurahan.clear();

                _kecamatanController.clear();
                _kelurahanController.clear();
                Get.back();
              },
            ));
          }),
          const Gap.v(h: 16),
          CustomTextField().optionForm('Kecamatan', _kecamatanController,
              registerController.listKabupaten.isNotEmpty ? true : false,
              () async {
            if (registerController.listKecamatan.isEmpty) {
              await registerController.fetchKecamatan(
                  registerController.selectedKabupatenCode.value);
            }

            Get.bottomSheet(CustomButtonSheet(
              title: 'Kecamatan',
              items:
                  registerController.listKecamatan.map((e) => e.name).toList(),
              onTap: (index) {
                final selectedKecamatan =
                    registerController.listKecamatan[index];
                _kecamatanController.text = selectedKecamatan.name;
                registerController.selectedKecamatanCode.value =
                    selectedKecamatan.code;

                registerController.listKelurahan.clear();

                _kelurahanController.clear();
                Get.back();
              },
            ));
          }),
          const Gap.v(h: 16),
          CustomTextField().optionForm('Kelurahan / Desa', _kelurahanController,
              registerController.listKecamatan.isNotEmpty ? true : false,
              () async {
            if (registerController.listKelurahan.isEmpty) {
              await registerController.fetchKelurahan(
                  registerController.selectedKecamatanCode.value);
            }

            Get.bottomSheet(CustomButtonSheet(
              title: 'Kelurahan / Desa',
              items:
                  registerController.listKelurahan.map((e) => e.name).toList(),
              onTap: (index) {
                final selectedKelurahan =
                    registerController.listKelurahan[index];
                _kelurahanController.text = selectedKelurahan.name;
                registerController.selectedKelurahanCode.value =
                    selectedKelurahan.code;

                Get.back();
              },
            ));
          }),
        ],
      ),
    );
  }

  Widget _buildAccountForm() {
    return Form(
      key: registerController.formKey3,
      child: Column(
        children: [
          CustomTextField().passwordForm('Password', Icons.lock,
              Icons.visibility_off, _passwordController),
          const Gap.v(h: 16),
          CustomTextField().passwordForm('Confirm Password', Icons.lock,
              Icons.visibility_off, _confirmPasswordController),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(StyleConst.secondaryColor),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Register Akun",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap.v(h: 8),
                  Text(
                    "Lengkapi data berikut untuk membuat akun baru!",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFFFFFFF),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: Colors.white),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Obx(
                    () => Stepper(
                      elevation: 0.5,
                      type: StepperType.horizontal,
                      currentStep: registerController.currentStep.value,
                      steps: getStep(),
                      onStepCancel: registerController.previousStep,
                      onStepContinue: _onStepContinue,
                      controlsBuilder: _buildControl,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onStepContinue() async {
    if (registerController.currentStep.value == 0) {
      if (registerController.formKey1.currentState!.validate()) {
        registerController.nextStep();
      }
    } else if (registerController.currentStep.value == 1) {
      if (registerController.formKey2.currentState!.validate()) {
        registerController.nextStep();
      }
    } else if (registerController.currentStep.value == 2) {
      if (registerController.formKey3.currentState!.validate()) {
        final userEntity = UserEntity(
          email: _emailController.text.trim(),
          firstName: _firstNameController.text.trim(),
          lastName: _lastNameController.text.trim(),
          phone: _phoneController.text.trim(),
          provinsiName: _provinsiController.text.trim(),
          provinsiId: registerController.selectedProvinsiCode.value,
          kabupatenName: _kabupatenController.text.trim(),
          kabupatenId: registerController.selectedKabupatenCode.value,
          kecamatanName: _kecamatanController.text.trim(),
          kecamatanId: registerController.selectedKecamatanCode.value,
          kelurahanName: _kelurahanController.text.trim(),
          kelurahanId: registerController.selectedKelurahanCode.value,
        );

        var password = _passwordController.text.trim();

        await registerController.registerAccount(userEntity, password);
        if (registerController.responseState.value == ResponseState.success) {
          Get.back();
          CustomSnackBar.show(
              title: 'Berhasil Registrasi',
              message: 'Silahkan login',
              positive: true);
        } else {
          CustomSnackBar.show(
              title: 'Gagal Registrasi',
              message: registerController.message.value,
              positive: false);
        }
      }
    }
  }

  Widget _buildControl(BuildContext context, ControlsDetails details) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Obx(() {
            if (registerController.responseState.value ==
                ResponseState.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Row(
              children: [
                if (registerController.currentStep.value != 0)
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.grey),
                          minimumSize: WidgetStateProperty.all(
                              Size(MediaQuery.of(context).size.width, 50))),
                      onPressed: details.onStepCancel,
                      child: const Text('Kembali',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                if (registerController.currentStep.value != 0)
                  const SizedBox(
                    width: 20,
                  ),
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            const Color(StyleConst.secondaryColor)),
                        minimumSize: WidgetStateProperty.all(
                            Size(MediaQuery.of(context).size.width, 50))),
                    onPressed: details.onStepContinue,
                    child: registerController.currentStep.value ==
                            getStep().length - 1
                        ? const Text('Kirim',
                            style: TextStyle(color: Colors.white))
                        : const Text('Selanjutnya',
                            style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            );
          }),
          const SizedBox(height: 20),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Sudah mempunyai akun?"),
                const SizedBox(width: 5),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Text(
                      "Masuk",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
