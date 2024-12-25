import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/core/enum/response_state.dart';
import 'package:pantera/app/features/auth/domain/entities/user_entity.dart';
import 'package:pantera/app/features/auth/domain/use_cases/fetch_data_user.dart';
import 'package:pantera/app/features/weather/domain/entities/weather_entity.dart';
import 'package:pantera/app/features/weather/domain/use_case/fetch_current_weather.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../../../core/helpers/shared_pref_helper.dart';
import '../../../../core/utils/fun_card_util.dart';

class WeatherHomeController extends GetxController {
  final FetchCurrentWeather weatherUseCase;
  final FetchDataUser userUseCase;

  WeatherHomeController(
      {required this.weatherUseCase, required this.userUseCase});

  var responseState = ResponseState.init.obs;
  final oneFeature = GlobalKey<ShowCaseWidgetState>().obs;
  final secondFeature = GlobalKey<ShowCaseWidgetState>().obs;
  final thirdFeature = GlobalKey<ShowCaseWidgetState>().obs;
  final fourthFeature = GlobalKey<ShowCaseWidgetState>().obs;

  Rx<List<List<WeatherEntity>>?> weatherList =
      Rx<List<List<WeatherEntity>>?>(null);
  Rx<WeatherEntity?> closestWeather = Rx<WeatherEntity?>(null);
  Rx<UserEntity?> user = Rx<UserEntity?>(null);
  var isExpanded = false.obs;

  @override
  onInit() {
    super.onInit();
    fetchAllData();
    startShowcase();
  }

  Future<void> fetchAllData() async {
    responseState.value = ResponseState.loading;
    update();

    try {
      DateTime currentTime = DateTime.now();
      final uid = SharedPrefHelper().getUid();

      user.value = await userUseCase.fetchDataUser(uid!);

      final response =
          await weatherUseCase.fetchCurrentWeather(user.value!.kelurahanId);
      weatherList.value = response;
      for (var weather in weatherList.value![0]) {
        DateTime weatherTime = weather.localDatetime;
        if (closestWeather.value == null ||
            (weatherTime.isBefore(currentTime) &&
                weatherTime.isAfter(closestWeather.value!.localDatetime))) {
          closestWeather.value = weather;
        }
      }

      responseState.value = ResponseState.success;
    } catch (e) {
      responseState.value = ResponseState.failed;
      throw Exception(e);
    } finally {
      update();
    }
  }

  void expandNextWeather() {
    isExpanded.value = !isExpanded.value;
    update();
  }

  void startShowcase() {
    var context = Get.context!;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ShowCaseWidget.of(context).startShowCase([
        oneFeature.value,
        secondFeature.value,
        thirdFeature.value,
        fourthFeature.value,
      ]);
    });
  }

  FunCard getFunCard(String weatherDesc) {
    return WeatherUtils.mapWeatherDescription(weatherDesc);
  }
}
