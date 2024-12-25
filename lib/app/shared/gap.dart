import 'package:flutter/cupertino.dart';

class Gap extends StatelessWidget {
  final double? width;
  final double? height;

  const Gap.v({super.key, required double h})
      : height = h,
        width = null;

  const Gap.h({super.key, required double w})
      : height = null,
        width = w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
