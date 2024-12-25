import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../shared/gap.dart';

class NotifikasiPage extends StatelessWidget {
  const NotifikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengaturan Notifikasi'),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          width: Get.size.width,
          height: Get.size.height,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pemberitahuan Cuaca',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Aktifkan pemberitahuan cuaca',
                      ),
                    ],
                  ),
                  Switch(
                    value: false,
                    onChanged: (value) {},
                    activeColor: Colors.blue,
                    inactiveThumbColor: Colors.grey,
                  ),
                ],
              ),
              const Gap.v(
                h: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pemberitahuan Gempa',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'Aktifkan pemberitahuan gempa terkini',
                      ),
                    ],
                  ),
                  Switch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.blue,
                    inactiveThumbColor: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
