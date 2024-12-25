import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/core/enum/response_state.dart';
import 'package:pantera/app/features/earth_quake/presentation/controllers/earth_quake_controller.dart';
import 'package:pantera/app/features/earth_quake/presentation/widgets/card_earth_quake_map.dart';
import 'package:pantera/app/features/earth_quake/presentation/widgets/card_edukasi.dart';
import 'package:pantera/app/features/earth_quake/presentation/widgets/card_history_earth_quake.dart';
import 'package:pantera/app/shared/custom_error.dart';
import 'package:pantera/app/shared/custom_loading.dart';
import '../../../../core/constant/style_const.dart';
import '../../../../shared/gap.dart';
import 'dart:math';

class EarthQuakePage extends GetView<EarthQuakeController> {
  const EarthQuakePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final currentEarthQuake = controller.currentEarthQuake.value;
      final listEarthQuake = controller.listEarthQuake.value;
      final state = controller.responseState.value;
      return Scaffold(
        backgroundColor: const Color(StyleConst.secondaryColor),
        appBar: _buildAppBar(context),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32), topRight: Radius.circular(32)),
              color: Color(StyleConst.whiteColor),
            ),
            child: state == ResponseState.loading
                ? const CustomLoading()
                : state == ResponseState.success
                    ? RefreshIndicator(
                        onRefresh: controller.fetchCurrentEarthQuake,
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          children: [
                            _buildCurrentEarthQuake(
                                currentEarthQuake, controller),
                            const Gap.v(
                              h: 32,
                            ),
                            _buildEdukasi(),
                            const Gap.v(
                              h: 32,
                            ),
                            _buildHistoryEarthQuake(listEarthQuake),
                          ],
                        ),
                      )
                    : const CustomError(),
          ),
        ),
      );
    });
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 75,
      backgroundColor: const Color(StyleConst.secondaryColor),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Gempa Bumi',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: const Color(StyleConst.whiteColor),
                ),
          ),
          const Gap.v(h: 4),
          Text(
            'Pantau Gempa, Siapkan Langkah Awal 🔔',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: const Color(StyleConst.whiteColor),
                ),
          ),
        ],
      ),
    );
  }

  _buildCurrentEarthQuake(currentEarthQuake, controller) {
    double lintang = controller.lintang.value;
    double bujur = controller.bujur.value;
    return Column(
      children: [
        CardEarthQuakeMap(
          entity: currentEarthQuake,
          controller: controller,
          lintang: lintang,
          bujur: bujur,
        ),
        const Gap.v(h: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                    Text('${currentEarthQuake?.magnitude}'),
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
                    Text('${currentEarthQuake?.kedalaman}'),
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
                    Text('${currentEarthQuake?.coordinates}'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _buildEdukasi() {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Edukasi Siaga Bencana",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            Text('Lihat Lainnya')
          ],
        ),
        const Gap.v(
          h: 16,
        ),
        SizedBox(
          height: 200,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const CardEdukasi();
            },
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemCount: 4,
          ),
        ),
      ],
    );
  }

  _buildHistoryEarthQuake(list) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Riwayat Gempa",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            Text('Lihat Lainnya')
          ],
        ),
        const Gap.v(
          h: 16,
        ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return CardHistoryEarthQuake(
                controller: controller, list: list, index: index);
          },
          separatorBuilder: (context, index) => const Gap.v(
            h: 8,
          ),
          itemCount: min(list?.length ?? 0, 5),
        ),
      ],
    );
  }
}
