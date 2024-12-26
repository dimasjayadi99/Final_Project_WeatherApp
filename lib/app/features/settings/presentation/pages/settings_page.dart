import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/core/constant/path_const.dart';
import 'package:pantera/app/core/constant/router_const.dart';
import '../../../../core/constant/style_const.dart';
import '../../../../shared/gap.dart';
import '../../controllers/settings_controller.dart';
import '../widgets/menu_setting.dart';

class SettingsPage extends GetView<SettingsController> {
  final List<Widget> listMenuSettings = [
    MenuProfile(
      title: 'Pengaturan Profile',
      label: 'Pengaturan terkait profile Anda',
      icon: Icons.person_outline_rounded,
      onTap: (BuildContext context) {
        Get.toNamed(RouterConst.profile);
      },
    ),
    MenuProfile(
      title: 'Notifikasi',
      label: 'Jadwalkan penerimaan notifikasi',
      icon: Icons.notifications_outlined,
      onTap: (BuildContext context) {
        Get.toNamed(RouterConst.notification);
      },
    ),
    MenuProfile(
      title: 'Tentang Aplikasi',
      label: 'Informasi lebih lanjut aplikasi',
      icon: Icons.info_outline,
      onTap: (BuildContext context) {
        Get.toNamed(RouterConst.about);
      },
    ),
    MenuProfile(
      title: 'Keluar',
      label: 'Klik untuk keluar dari akun Anda',
      icon: Icons.logout_outlined,
      onTap: (BuildContext context) {
        Get.defaultDialog(
          title: 'Konfirmasi Keluar',
          middleText: 'Apakah Anda yakin ingin keluar dari akun?',
          textCancel: 'Batal',
          textConfirm: 'Keluar',
          confirmTextColor: Colors.white,
          onCancel: () {},
          onConfirm: () {
            Get.find<SettingsController>().logout();
          },
        );
      },
    ),
  ];

  SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(StyleConst.secondaryColor),
      appBar: _buildAppBar(context),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32)),
          color: Color(StyleConst.whiteColor),
        ),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color(StyleConst.secondaryColor),
                        width: 1),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      PathConst.defaultAvatar,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Gap.h(w: 16),
                Obx(
                  () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${controller.user.value?.firstName ?? 'Pengguna'} ${controller.user.value?.lastName ?? ''}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      const Gap.v(h: 4),
                      Text(
                        controller.user.value?.email ?? 'email address',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Gap.v(h: 16),
            Divider(
              thickness: 1,
              height: 1,
              color: Colors.grey.withOpacity(0.5),
            ),
            const Gap.v(h: 16),
            _buildMenuList(listMenuSettings),
          ],
        ),
      )),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 75,
      backgroundColor: const Color(StyleConst.secondaryColor),
      title: Text(
        'Pengaturan Akun',
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: const Color(StyleConst.whiteColor),
            ),
      ),
    );
  }

  Widget _buildMenuList(List<Widget> menuList) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: menuList.length,
      itemBuilder: (context, index) {
        return menuList[index];
      },
      separatorBuilder: (context, index) => const Gap.v(h: 24),
    );
  }
}
