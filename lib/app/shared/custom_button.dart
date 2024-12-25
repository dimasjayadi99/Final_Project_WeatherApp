import 'package:flutter/material.dart';

import '../core/constant/style_const.dart';

class CustomButton {
  SizedBox fillButton(BuildContext context, String label, VoidCallback onTap) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(StyleConst.secondaryColor),
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: const TextStyle(color: Color(StyleConst.whiteColor)),
        ),
      ),
    );
  }

  SizedBox outlineButton(
      BuildContext context, String label, VoidCallback onTap) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(StyleConst.secondaryColor)),
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: const TextStyle(color: Color(StyleConst.blackColor)),
        ),
      ),
    );
  }
}
