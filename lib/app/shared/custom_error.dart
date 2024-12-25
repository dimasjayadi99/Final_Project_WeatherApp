import 'package:flutter/cupertino.dart';

class CustomError extends StatelessWidget {
  final String message;

  const CustomError({this.message = 'Terjadi kesalahan', super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
