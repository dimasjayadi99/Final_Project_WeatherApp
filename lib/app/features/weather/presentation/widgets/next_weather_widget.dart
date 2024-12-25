import 'package:flutter/material.dart';
import 'package:pantera/app/features/weather/domain/entities/weather_entity.dart';
import 'package:pantera/app/shared/custom_divider.dart';
import '../../../../core/utils/date_util.dart';
import '../../../../shared/gap.dart';
import '../controllers/weather_home_controller.dart';
import 'card_other_weather.dart';

class NextWeatherWidget extends StatelessWidget {
  final WeatherHomeController controller;
  final bool isExpanded;
  final List<List<WeatherEntity>> slicedWeatherList;
  const NextWeatherWidget(
      {super.key,
      required this.controller,
      required this.isExpanded,
      required this.slicedWeatherList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Perkiraan Cuaca Berikutnya",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
        const Gap.v(h: 16),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index1) {
            final dailyWeather = slicedWeatherList[index1];
            return Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(formatDates(dailyWeather)),
                    const Gap.v(h: 16),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index2) {
                        final weather = slicedWeatherList[index1][index2];
                        var funCard =
                            controller.getFunCard(weather.weatherDesc);
                        return CardOtherWeather(
                            funCard: funCard, weather: weather);
                      },
                      separatorBuilder: (context, index) => const Gap.v(
                        h: 8,
                      ),
                      itemCount:
                          !isExpanded ? 4 : slicedWeatherList[index1].length,
                    ),
                  ],
                ),
                !isExpanded
                    ? Positioned(
                        bottom: 0,
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.white,
                                Colors.white.withOpacity(0.1),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            );
          },
          separatorBuilder: (context, index) => Container(
            margin: const EdgeInsets.symmetric(vertical: 32),
            child: const CustomDivider(),
          ),
          itemCount: controller.isExpanded.value ? slicedWeatherList.length : 1,
        ),
        !isExpanded
            ? Center(
                child: TextButton(
                    onPressed: controller.expandNextWeather,
                    child: const Text('Lihat Lainnya')))
            : Container(),
      ],
    );
  }
}
