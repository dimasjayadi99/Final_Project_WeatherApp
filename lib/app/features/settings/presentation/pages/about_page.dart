import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/core/constant/path_const.dart';
import 'package:pantera/app/shared/custom_divider.dart';
import 'package:pantera/app/shared/gap.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          width: Get.size.width,
          height: Get.size.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Image.asset(
                  PathConst.logoLauncher,
                  width: 100,
                  height: 100,
                ),
                const Gap.v(
                  h: 16,
                ),
                const Text(
                  'Pantera',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                const Gap.v(
                  h: 8,
                ),
                const Text('Pantau Nusantara'),
                const Gap.v(
                  h: 32,
                ),
                const Text(
                    textAlign: TextAlign.justify,
                    'Pantera adalah aplikasi mobile bernama lengkap Pantau (elektronik) Nusantara, yang dirancang untuk memberikan informasi terkini mengenai cuaca dan aktivitas gempa bumi di Indonesia. Aplikasi ini menggunakan data resmi dari BMKG (Badan Meteorologi, Klimatologi, dan Geofisika), memastikan informasi yang disajikan akurat dan terpercaya. Berikut adalah deskripsi detail tentang aplikasi Pantera:'),
                const Gap.v(
                  h: 16,
                ),
                const CustomDivider(),
                const Gap.v(
                  h: 16,
                ),
                const Text(
                  'Fitur Utama',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Gap.v(h: 16),
                const Column(
                  children: [
                    ListTile(
                      title: Text('Informasi Cuaca'),
                      subtitle: Text(
                        'Menampilkan data prakiraan cuaca harian sesuai lokasi.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Info Gempa Bumi'),
                      subtitle: Text(
                        'Memberikan informasi gempa bumi yang baru saja terjadi, termasuk lokasi, magnitudo, kedalaman, serta waktu kejadian.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Notifikasi'),
                      subtitle: Text(
                        'Pengguna akan mendapatkan notifikasi secara realtime mengenai cuaca dan gempa bumi.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                const Gap.v(h: 32),
                const Text(
                  'Tujuan Aplikasi',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Gap.v(h: 8),
                const Column(
                  children: [
                    ListTile(
                      title: Text(
                          'Membantu masyarakat Indonesia mendapatkan akses cepat dan mudah terhadap informasi cuaca dan gempa bumi.'),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                          'Meningkatkan kesadaran akan kondisi geografis dan cuaca di wilayah Indonesia.'),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                          'Menyediakan platform berbasis teknologi yang dapat diandalkan untuk memantau fenomena alam.'),
                    ),
                  ],
                ),
                const Gap.v(h: 32),
                const Text(
                  'Keunggulan',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Gap.v(h: 8),
                const Column(
                  children: [
                    ListTile(
                      title: Text(
                          'Integrasi Firebase Auth: Mendukung registrasi dan login dengan email.'),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                          'Desain Ramah Pengguna: Antar muka yang intuitif dan mudah digunakan.'),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                          'Data Real-Time: Menggunakan API BMKG untuk data cuaca dan gempa bumi terbaru.'),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                          'Berbasis Bahasa Indonesia: Mengutamakan pengguna lokal dengan penggunaan bahasa yang familiar.'),
                    ),
                  ],
                ),
                const Gap.v(h: 32),
                const Text(
                  'Informasi Aplikasi',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const Gap.v(h: 8),
                const Column(
                  children: [
                    ListTile(
                      title: Text('Developer / Pengembang'),
                      subtitle: Text('Dimas Jayadi'),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Versi Aplikasi'),
                      subtitle: Text('Version 1.0.0'),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Sumber Data'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('https://data.bmkg.go.id/prakiraan-cuaca/'),
                          Text('https://data.bmkg.go.id/gempabumi/'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
