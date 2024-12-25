import 'package:flutter/material.dart';
import 'package:pantera/app/features/earth_quake/domain/entities/earth_quake_entity.dart';
import 'package:pantera/app/features/earth_quake/presentation/controllers/earth_quake_controller.dart';
import 'package:pantera/app/features/earth_quake/presentation/widgets/earth_quake_map.dart';

class CardEarthQuakeMap extends StatelessWidget {
  final EarthQuakeEntity? entity;
  final EarthQuakeController controller;
  final double lintang;
  final double bujur;
  const CardEarthQuakeMap(
      {super.key,
      required this.entity,
      required this.controller,
      required this.lintang,
      required this.bujur});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFFDE5E5),
      ),
      height: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            EarthQuakeMap(lintang: lintang, bujur: bujur),
            Positioned(
              top: 16,
              right: 16,
              child: GestureDetector(
                onTap: () => controller.toDetailMap(entity),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black.withOpacity(0.2),
                  ),
                  child: const Icon(
                    Icons.zoom_out_map,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Gempa Terkini',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${entity?.tanggal} || ${entity?.jam}',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${entity?.wilayah}',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
