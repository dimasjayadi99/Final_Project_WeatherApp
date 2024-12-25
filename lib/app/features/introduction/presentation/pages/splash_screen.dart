import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/core/constant/style_const.dart';
import '../../controllers/splash_screen_controller.dart';
import '../widgets/loading_animate.dart';
import '../widgets/logo_tagline.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Get.find<SplashScreenController>();
    return const Scaffold(
      backgroundColor: Color(StyleConst.whiteColor),
      body: Stack(children: [
        LogoTagline(),
        LoadingAnimate(),
      ]),
    );
  }
}
