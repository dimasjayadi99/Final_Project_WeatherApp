import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/core/constant/style_const.dart';
import 'package:pantera/app/features/weather/presentation/controllers/weather_home_controller.dart';
import 'package:pantera/app/features/weather/presentation/widgets/current_weather_widget.dart';
import 'package:pantera/app/features/weather/presentation/widgets/list_current_weather_widget.dart';
import 'package:pantera/app/features/weather/presentation/widgets/fun_card_widget.dart';
import 'package:pantera/app/features/weather/presentation/widgets/next_weather_widget.dart';
import 'package:pantera/app/shared/custom_divider.dart';
import 'package:pantera/app/shared/custom_error.dart';
import 'package:pantera/app/shared/custom_loading.dart';
import 'package:pantera/app/shared/gap.dart';
import 'package:showcaseview/showcaseview.dart';
import '../../../../core/constant/path_const.dart';
import '../../../../core/enum/response_state.dart';

class WeatherHome extends GetView<WeatherHomeController> {
  const WeatherHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final weatherList = controller.weatherList.value;
      final cWeather = controller.closestWeather.value;
      final user = controller.user.value;
      final state = controller.responseState.value;
      final currentTime = DateTime.now();
      final funCard =
          controller.getFunCard(cWeather?.weatherDesc ?? 'Weather unknown');

      return Scaffold(
        backgroundColor: const Color(StyleConst.secondaryColor),
        appBar: _buildAppBar(context, user),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(top: 16),
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
                        onRefresh: controller.fetchAllData,
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          children: [
                            Showcase(
                              targetBorderRadius: BorderRadius.circular(32),
                              targetPadding: const EdgeInsets.all(16),
                              tooltipPadding: const EdgeInsets.all(16),
                              key: controller.oneFeature.value,
                              description:
                                  'Menampilkan informasi cuaca saat ini',
                              child:
                                  _buildCurrentWeather(cWeather, user, funCard),
                            ),
                            const Gap.v(h: 16),
                            const CustomDivider(),
                            const Gap.v(h: 32),
                            Showcase(
                              targetBorderRadius: BorderRadius.circular(32),
                              targetPadding: const EdgeInsets.all(16),
                              tooltipPadding: const EdgeInsets.all(16),
                              key: controller.secondFeature.value,
                              description: 'Sebuah tips dan pesan untuk mu',
                              child: _buildFunCard(cWeather, funCard),
                            ),
                            const Gap.v(
                              h: 32,
                            ),
                            Showcase(
                              targetBorderRadius: BorderRadius.circular(32),
                              targetPadding: const EdgeInsets.all(16),
                              tooltipPadding: const EdgeInsets.all(16),
                              key: controller.thirdFeature.value,
                              description:
                                  'Menampilkan perkiraan cuaca hari ini berdasarkan waktunya',
                              child: _buildListCurrentWeather(
                                  weatherList?[0], currentTime),
                            ),
                            const Gap.v(h: 32),
                            Showcase(
                              targetBorderRadius: BorderRadius.circular(32),
                              targetPadding: const EdgeInsets.all(16),
                              tooltipPadding: const EdgeInsets.all(16),
                              key: controller.fourthFeature.value,
                              description:
                                  'Menampilkan perkiraan cuaca lainnya untuk dua hari kedepan',
                              child: _buildNextWeather(weatherList),
                            ),
                          ],
                        ),
                      )
                    : const CustomError(),
          ),
        ),
      );
    });
  }

  AppBar _buildAppBar(BuildContext context, user) {
    return AppBar(
      toolbarHeight: 75,
      backgroundColor: const Color(StyleConst.secondaryColor),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Halo, ${user != null ? user.firstName : 'pengguna'} 👋',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: const Color(StyleConst.whiteColor),
                ),
          ),
          const Gap.v(h: 4),
          Text(
            'Waktunya pantau cuaca hari ini!',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: const Color(StyleConst.whiteColor),
                ),
          ),
        ],
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 16),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
          ),
          child: ClipOval(
            child: Image.asset(
              PathConst.defaultAvatar,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  _buildCurrentWeather(cWeather, user, funCard) {
    return CurrentWeatherWidget(
        cWeather: cWeather, user: user, funCard: funCard);
  }

  Widget _buildFunCard(cWeather, funCard) {
    return FunCardWidget(funCard: funCard);
  }

  _buildListCurrentWeather(weathers, currentTime) {
    return ListCurrentWeatherWidget(
      weathers: weathers,
      currentTime: currentTime,
      controller: controller,
    );
  }

  _buildNextWeather(weatherList) {
    final slicedWeatherList =
        weatherList.sublist(1, weatherList.length.clamp(1, 3));
    var isExpanded = controller.isExpanded.value;

    return NextWeatherWidget(
        controller: controller,
        isExpanded: isExpanded,
        slicedWeatherList: slicedWeatherList);
  }
}
