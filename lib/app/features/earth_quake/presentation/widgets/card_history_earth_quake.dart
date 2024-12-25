import 'package:flutter/material.dart';
import 'package:pantera/app/features/earth_quake/domain/entities/earth_quake_entity.dart';
import 'package:pantera/app/features/earth_quake/presentation/controllers/earth_quake_controller.dart';

import '../../../../core/constant/style_const.dart';
import '../../../../shared/gap.dart';

class CardHistoryEarthQuake extends StatelessWidget {
  final EarthQuakeController controller;
  final List<EarthQuakeEntity>? list;
  final int index;
  const CardHistoryEarthQuake(
      {super.key,
      required this.controller,
      required this.list,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.listToDetailMap(index);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(StyleConst.secondaryColor),
            width: 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  '${list?[index].magnitude}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text('${list?[index].kedalaman}')
              ],
            ),
            const Gap.h(w: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${list?[index].wilayah}',
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  const Gap.v(h: 6),
                  Text(
                    '${list?[index].tanggal} || ${list?[index].jam}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  const Gap.v(h: 6),
                  Text(
                    '${list?[index].potensi}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
