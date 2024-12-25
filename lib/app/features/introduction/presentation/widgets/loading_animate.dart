import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class LoadingAnimate extends StatelessWidget {
  const LoadingAnimate({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: Lottie.asset(
          width: 32,
          height: 32,
          fit: BoxFit.cover,
          'assets/json/loading.json',
          repeat: true,
        ),
      ),
    );
  }
}
