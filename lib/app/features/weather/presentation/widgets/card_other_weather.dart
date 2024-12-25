import 'package:flutter/material.dart';
import 'package:pantera/app/core/utils/fun_card_util.dart';
import 'package:pantera/app/features/weather/domain/entities/weather_entity.dart';
import '../../../../core/constant/style_const.dart';
import '../../../../core/utils/date_util.dart';
import '../../../../shared/gap.dart';

class CardOtherWeather extends StatelessWidget {
  final FunCard funCard;
  final WeatherEntity weather;
  const CardOtherWeather(
      {super.key, required this.funCard, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        children: [
          Text(
            '${weather.temperature}°C',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          const Gap.h(w: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(weather.weatherDesc),
              Text(formatDateTime(weather.localDatetime.toString())),
            ],
          ),
          const Spacer(),
          Image.asset(
            funCard.pathIcon,
            width: 50,
            height: 50,
          )
        ],
      ),
    );
  }
}
