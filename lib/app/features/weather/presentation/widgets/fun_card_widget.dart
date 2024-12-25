import 'package:flutter/material.dart';
import '../../../../core/constant/style_const.dart';
import '../../../../core/utils/fun_card_util.dart';
import '../../../../shared/gap.dart';

class FunCardWidget extends StatelessWidget {
  final FunCard funCard;
  const FunCardWidget({super.key, required this.funCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(StyleConst.secondaryColor),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              funCard.weatherDesc,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const Gap.h(w: 16),
          Expanded(
            flex: 1,
            child: Image.asset(
              funCard.pathIllustration,
              width: 120,
              height: 120,
            ),
          ),
        ],
      ),
    );
  }
}
