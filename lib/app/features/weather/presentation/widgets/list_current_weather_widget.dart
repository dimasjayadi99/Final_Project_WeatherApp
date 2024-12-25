import 'package:flutter/material.dart';
import 'package:pantera/app/features/weather/domain/entities/weather_entity.dart';
import 'package:pantera/app/features/weather/presentation/controllers/weather_home_controller.dart';

import '../../../../shared/gap.dart';
import 'card_current_weather.dart';

class ListCurrentWeatherWidget extends StatelessWidget {
  final List<WeatherEntity> weathers;
  final DateTime currentTime;
  final WeatherHomeController controller;
  const ListCurrentWeatherWidget(
      {super.key,
      required this.weathers,
      required this.currentTime,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Perkiraan Berdasarkan Waktu",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
        const Gap.v(
          h: 16,
        ),
        SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final weather = weathers[index];
              var funCard = controller.getFunCard(weather.weatherDesc);

              bool isCurrentTime =
                  weather.localDatetime.isBefore(currentTime) &&
                      weather.localDatetime
                          .add(const Duration(hours: 3))
                          .isAfter(currentTime);

              return CardCurrentWeather(
                  isCurrentTime: isCurrentTime,
                  funCard: funCard,
                  weather: weather);
            },
            separatorBuilder: (context, index) => const Gap.h(
              w: 8,
            ),
            itemCount: weathers.length,
          ),
        ),
      ],
    );
  }
}
