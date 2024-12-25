import 'package:flutter/material.dart';
import 'gap.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          Gap.v(
            h: 32,
          ),
          Text('Menyiapkan data\nTunggu Sebentar...')
        ],
      ),
    );
  }
}
