import 'package:flutter/material.dart';

class CustomTextField {
  TextFormField generalForm(String label, IconData prefixIcon,
      TextEditingController controller, TextInputType inputType) {
    return TextFormField(
      keyboardType: inputType,
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          hintText: '$label anda...',
          label: Text(label),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)))),
      validator: (value) {
        if (value == '') {
          return '$label masih kosong!';
        }
        return null;
      },
    );
  }

  TextFormField passwordForm(String label, IconData prefixIcon,
      IconData suffixIcon, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          suffixIcon: Icon(suffixIcon),
          hintText: label,
          label: Text(label),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)))),
      validator: (value) {
        if (value == '') {
          return '$label masih kosong!';
        }
        return null;
      },
    );
  }

  TextFormField optionForm(String label, TextEditingController controller,
      bool isEnable, VoidCallback onTap) {
    return TextFormField(
      controller: controller,
      onTap: onTap,
      readOnly: true,
      decoration: InputDecoration(
          enabled: isEnable,
          suffixIcon: const Icon(Icons.arrow_drop_down),
          hintText: label,
          label: Text(label),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)))),
      validator: (value) {
        if (value == '') {
          return '$label masih kosong!';
        }
        return null;
      },
    );
  }
}
