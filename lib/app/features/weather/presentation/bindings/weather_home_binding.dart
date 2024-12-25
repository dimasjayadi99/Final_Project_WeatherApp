import 'package:get/get.dart';
import 'package:pantera/app/features/weather/data/mapper/weather_mapper.dart';
import 'package:pantera/app/features/weather/data/repositories/weather_repository_impl.dart';
import 'package:pantera/app/features/weather/domain/repositories/weather_repository.dart';
import 'package:pantera/app/features/weather/domain/use_case/fetch_current_weather.dart';
import 'package:pantera/app/features/weather/presentation/controllers/weather_home_controller.dart';

import '../../../auth/data/repositories/user_impl.dart';
import '../../../auth/domain/repositories/user_repository.dart';
import '../../../auth/domain/use_cases/fetch_data_user.dart';

class WeatherHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WeatherMapper());

    Get.lazyPut<WeatherRepository>(() => WeatherRepositoryImpl(
        weatherService: Get.find(), weatherMapper: Get.find()));
    Get.lazyPut<UserRepository>(() => UserImpl(
          userMapper: Get.find(),
          authService: Get.find(),
        ));
    Get.lazyPut(() => FetchCurrentWeather(weatherRepository: Get.find()));
    Get.lazyPut(() => FetchDataUser(Get.find()));
    Get.lazyPut(() => WeatherHomeController(
        weatherUseCase: Get.find(), userUseCase: Get.find()));
  }
}
