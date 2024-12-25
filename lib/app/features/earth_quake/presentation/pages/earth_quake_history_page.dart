import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/features/earth_quake/domain/entities/earth_quake_entity.dart';
import 'package:pantera/app/features/earth_quake/presentation/controllers/earth_quake_controller.dart';
import 'package:pantera/app/features/earth_quake/presentation/widgets/card_history_earth_quake.dart';
import 'package:pantera/app/shared/gap.dart';

class EarthQuakeHistoryPage extends GetView<EarthQuakeController> {
  final List<EarthQuakeEntity> list;
  const EarthQuakeHistoryPage({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gempa Bumi Dirasakan'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return CardHistoryEarthQuake(
                  controller: controller, list: list, index: index);
            },
            separatorBuilder: (context, index) => const Gap.v(
                  h: 16,
                ),
            itemCount: list.length),
      )),
    );
  }
}
