import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pantera/app/core/constant/path_const.dart';
import 'package:pantera/app/core/constant/string_const.dart';
import 'package:pantera/app/core/constant/style_const.dart';
import '../../controllers/introduction_controller.dart';

class IntroductionPage extends StatelessWidget {
  IntroductionPage({super.key});

  late final List<PageViewModel> listPagesView = [
    PageViewModel(
      image: buildImage(PathConst.introductionImage1),
      title: StringConst.introductionTitle1,
      body: StringConst.introductionBody1,
      decoration: getDecoration(),
    ),
    PageViewModel(
      image: buildImage(PathConst.introductionImage2),
      title: StringConst.introductionTitle2,
      body: StringConst.introductionBody2,
      decoration: getDecoration(),
    ),
    PageViewModel(
      image: buildImage(PathConst.introductionImage3),
      title: StringConst.introductionTitle3,
      body: StringConst.introductionBody3,
      decoration: getDecoration(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroductionController>(
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: IntroductionScreen(
            pages: listPagesView,
            onDone: controller.completeIntroduction,
            globalBackgroundColor: Colors.white,
            scrollPhysics: const ClampingScrollPhysics(),
            showDoneButton: true,
            showNextButton: true,
            showSkipButton: true,
            skip: const Text("Lewati"),
            next: const Text("Selanjutnya"),
            done: const Text("Ayo, Mulai!"),
            dotsDecorator: getDotsDecorator(),
          ),
        ),
      ),
    );
  }

  PageDecoration getDecoration() {
    return const PageDecoration(
      imagePadding: EdgeInsets.only(top: 100),
      pageColor: Colors.white,
      bodyPadding: EdgeInsets.only(top: 10, left: 20, right: 20),
      titlePadding: EdgeInsets.only(top: 20),
      titleTextStyle: TextStyle(
          color: Color(StyleConst.blackColor),
          fontSize: 18,
          fontWeight: FontWeight.bold),
      bodyTextStyle:
          TextStyle(color: Color(StyleConst.blackColor), fontSize: 14),
    );
  }

  DotsDecorator getDotsDecorator() {
    return const DotsDecorator(
      spacing: EdgeInsets.symmetric(horizontal: 2),
      activeColor: Color(StyleConst.primaryColor),
      color: Colors.grey,
      activeSize: Size(12, 5),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
    );
  }
}

Widget buildImage(String imagePath) {
  return Center(
      child: Image.asset(
    imagePath,
    width: 360,
  ));
}
