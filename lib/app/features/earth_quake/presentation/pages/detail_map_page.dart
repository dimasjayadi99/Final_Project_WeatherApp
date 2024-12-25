import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/features/earth_quake/domain/entities/earth_quake_entity.dart';
import 'package:pantera/app/features/earth_quake/presentation/controllers/earth_quake_controller.dart';
import '../../../../shared/gap.dart';
import '../widgets/earth_quake_map.dart';

class DetailMapPage extends GetView<EarthQuakeController> {
  final EarthQuakeEntity entity;
  final double lintang;
  final double bujur;

  const DetailMapPage(
      {super.key,
      required this.entity,
      required this.lintang,
      required this.bujur});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          EarthQuakeMap(lintang: lintang, bujur: bujur),
          _buildDescription(),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  _buildDescription() {
    return Positioned(
      bottom: 32,
      right: 16,
      left: 16,
      child: Column(
        children: [
          Container(
            width: Get.size.width,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Magnitude',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Gap.v(h: 4),
                      Text(entity.magnitude),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Kedalaman',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Gap.v(h: 4),
                      Text(entity.kedalaman),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Kordinat',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Gap.v(h: 4),
                      Text(entity.coordinates),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Gap.v(h: 16),
          Container(
            width: Get.size.width,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${entity.tanggal} || ${entity.jam}',
                  style: const TextStyle(color: Colors.grey),
                ),
                const Gap.v(h: 8),
                Text('• ${entity.wilayah}'),
                const Gap.v(h: 8),
                Text('• ${entity.potensi}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
