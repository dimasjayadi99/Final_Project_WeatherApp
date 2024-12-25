import 'package:flutter/cupertino.dart';
import 'package:pantera/app/core/constant/path_const.dart';
import '../../../../core/constant/style_const.dart';
import '../../../../shared/gap.dart';

class LogoTagline extends StatelessWidget {
  const LogoTagline({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            PathConst.logoLauncher,
            width: 80,
            height: 80,
          ),
          const Gap.h(w: 6),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StyleConst.logoText,
              StyleConst.taglineText,
            ],
          ),
        ],
      ),
    );
  }
}
