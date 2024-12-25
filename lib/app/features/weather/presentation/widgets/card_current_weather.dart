import 'package:flutter/material.dart';
import 'package:pantera/app/core/utils/fun_card_util.dart';
import 'package:pantera/app/features/weather/domain/entities/weather_entity.dart';
import '../../../../core/constant/style_const.dart';
import '../../../../core/utils/date_util.dart';
import '../../../../shared/gap.dart';

class CardCurrentWeather extends StatelessWidget {
  final bool isCurrentTime;
  final FunCard funCard;
  final WeatherEntity weather;
  const CardCurrentWeather(
      {super.key,
      required this.isCurrentTime,
      required this.funCard,
      required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 20,
      decoration: BoxDecoration(
        color: isCurrentTime
            ? const Color(StyleConst.secondaryColor)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(StyleConst.secondaryColor),
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            funCard.pathIcon,
            width: 50,
            height: 50,
          ),
          const Gap.h(w: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${weather.temperature}°C',
                  style: TextStyle(
                      color: isCurrentTime ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  formatDateTime(weather.localDatetime.toString()),
                  style: TextStyle(
                      color: isCurrentTime ? Colors.white : Colors.black,
                      fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
