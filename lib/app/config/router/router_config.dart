import 'package:get/get.dart';
import 'package:pantera/app/features/earth_quake/presentation/bindings/earth_quake_binding.dart';
import 'package:pantera/app/features/earth_quake/presentation/pages/earth_quake_history_page.dart';
import 'package:pantera/app/features/earth_quake/presentation/pages/earth_quake_page.dart';
import 'package:pantera/app/features/introduction/bindings/splash_screen_binding.dart';
import 'package:pantera/app/features/settings/presentation/pages/about_page.dart';
import 'package:pantera/app/features/settings/presentation/pages/edit_profile_page.dart';
import 'package:pantera/app/features/settings/presentation/pages/notifikasi_page.dart';
import 'package:pantera/app/features/settings/presentation/pages/settings_page.dart';
import 'package:pantera/app/features/weather/presentation/bindings/weather_home_binding.dart';
import 'package:pantera/app/features/weather/presentation/pages/weather_home_page.dart';
import '../../../main.dart';
import '../../core/constant/router_const.dart';
import '../../features/auth/presentation/bindings/login_binding.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/earth_quake/presentation/pages/detail_map_page.dart';
import '../../features/introduction/bindings/introduction_binding.dart';
import '../../features/introduction/presentation/pages/introduction_page.dart';
import '../../features/auth/presentation/bindings/register_binding.dart';
import '../../features/auth/presentation/pages/register_page.dart';
import '../../features/introduction/presentation/pages/splash_screen.dart';
import '../../features/settings/bindings/settings_binding.dart';

class MyRouterConfig {
  List<GetPage> listPage = [
    GetPage(
        name: RouterConst.splashScreen,
        page: () => const SplashScreen(),
        binding: SplashScreenBinding()),
    GetPage(
      name: RouterConst.introduction,
      page: () => IntroductionPage(),
      binding: IntroductionBinding(),
    ),
    GetPage(
        name: RouterConst.login,
        page: () => const LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: RouterConst.register,
        page: () => RegisterPage(),
        binding: RegisterBinding()),
    GetPage(
        name: RouterConst.dashboard,
        page: () => const WeatherHome(),
        binding: WeatherHomeBinding()),
    GetPage(
        name: RouterConst.mainPage,
        page: () => const BottomBar(),
        bindings: [
          WeatherHomeBinding(),
          EarthQuakeBinding(),
          SettingsBinding(),
        ]),
    GetPage(
      name: RouterConst.earthQuake,
      page: () => const EarthQuakePage(),
      binding: EarthQuakeBinding(),
    ),
    GetPage(
      name: RouterConst.earthQuakeDetail,
      page: () => DetailMapPage(
        entity: Get.arguments['entity'],
        lintang: Get.arguments['lintang'],
        bujur: Get.arguments['bujur'],
      ),
    ),
    GetPage(
      name: RouterConst.setting,
      page: () => SettingsPage(),
    ),
    GetPage(
      name: RouterConst.about,
      page: () => const AboutPage(),
    ),
    GetPage(
      name: RouterConst.notification,
      page: () => const NotifikasiPage(),
    ),
    GetPage(
      name: RouterConst.earthQuakeHistory,
      page: () => EarthQuakeHistoryPage(
        list: Get.arguments['list'],
      ),
    ),
    GetPage(
      name: RouterConst.profile,
      page: () => const EditProfilePage(),
    ),
  ];
}
