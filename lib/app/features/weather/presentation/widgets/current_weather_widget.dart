import 'package:flutter/material.dart';
import 'package:pantera/app/core/utils/fun_card_util.dart';
import 'package:pantera/app/features/auth/domain/entities/user_entity.dart';
import 'package:pantera/app/features/weather/domain/entities/weather_entity.dart';

import '../../../../core/utils/date_util.dart';
import '../../../../core/utils/wind_direction_util.dart';
import '../../../../shared/gap.dart';

class CurrentWeatherWidget extends StatelessWidget {
  final WeatherEntity cWeather;
  final UserEntity user;
  final FunCard funCard;
  const CurrentWeatherWidget(
      {super.key,
      required this.cWeather,
      required this.user,
      required this.funCard});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${cWeather.temperature}°C',
                  style: const TextStyle(
                      fontSize: 32, fontWeight: FontWeight.w700),
                ),
                Text(
                  '${cWeather.weatherDesc} / ${cWeather.weatherDescEn}',
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                const Gap.v(
                  h: 16,
                ),
                Text('${user.provinsiName}, ${user.kelurahanName}'),
                const Gap.v(
                  h: 4,
                ),
                Text(formatDate(cWeather.localDatetime.toString())),
              ],
            ),
            const Spacer(),
            Image.asset(
              funCard.pathIcon,
              width: 130,
              height: 130,
            ),
          ],
        ),
        const Gap.v(h: 32),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Kelembapan',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Gap.v(h: 4),
                  Text('${cWeather.humidity}'),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Angin',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Gap.v(h: 4),
                  Text('${cWeather.windSpeed} km/jam'),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Arah',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Gap.v(h: 4),
                  Text(windDirectionUtil(cWeather.windDirection)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
