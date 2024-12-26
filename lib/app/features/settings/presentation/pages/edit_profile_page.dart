import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/core/constant/path_const.dart';
import 'package:pantera/app/core/enum/response_state.dart';
import 'package:pantera/app/features/settings/controllers/settings_controller.dart';
import 'package:pantera/app/shared/custom_button.dart';
import 'package:pantera/app/shared/custom_snackbar.dart';
import 'package:pantera/app/shared/custom_text_field.dart';

class EditProfilePage extends GetView<SettingsController> {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: SafeArea(
        child: Obx(
          () {
            if (controller.user.value == null) {
              return const Center(child: CircularProgressIndicator());
            }

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage(PathConst.defaultAvatar),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.blue,
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: const Icon(
                                  Icons.edit,
                                  size: 16,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    CustomTextField().generalForm(
                        'Email',
                        Icons.email,
                        controller.emailController,
                        TextInputType.emailAddress,
                        false),
                    const SizedBox(height: 16),
                    CustomTextField().generalForm(
                        'First Name',
                        Icons.person,
                        controller.firstNameController,
                        TextInputType.text,
                        true),
                    const SizedBox(height: 16),
                    CustomTextField().generalForm(
                        'Last Name',
                        Icons.person,
                        controller.lastNameController,
                        TextInputType.text,
                        true),
                    const SizedBox(height: 16),
                    CustomTextField().generalForm('Phone', Icons.phone,
                        controller.phoneController, TextInputType.number, true),
                    const SizedBox(height: 32),
                    Obx(
                      () => controller.responseState.value ==
                              ResponseState.loading
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : CustomButton().fillButton(
                              context,
                              'Simpan',
                              () async {
                                await controller.updateProfile(
                                  controller.firstNameController.text.trim(),
                                  controller.lastNameController.text.trim(),
                                  controller.phoneController.text.trim(),
                                );
                                if (controller.responseState.value ==
                                    ResponseState.success) {
                                  Get.back();
                                  CustomSnackBar.show(
                                      title: 'Berhasil',
                                      message: 'Data berhasil diupdate',
                                      positive: true);
                                  controller.fetchDataUser();
                                } else {
                                  CustomSnackBar.show(
                                      title: 'Gagal',
                                      message: 'Data gagal diupdate',
                                      positive: false);
                                }
                              },
                            ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
