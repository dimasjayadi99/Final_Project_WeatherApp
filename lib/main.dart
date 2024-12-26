import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:pantera/app/config/router/router_config.dart';
import 'package:pantera/app/core/constant/router_const.dart';
import 'package:pantera/app/core/constant/style_const.dart';
import 'package:pantera/app/core/dependency/injection_container.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:pantera/app/features/earth_quake/presentation/pages/earth_quake_page.dart';
import 'package:pantera/app/features/news/presentation/pages/news_page.dart';
import 'package:pantera/app/features/settings/presentation/pages/settings_page.dart';
import 'package:showcaseview/showcaseview.dart';
import 'app/core/helpers/shared_pref_helper.dart';
import 'app/features/weather/presentation/pages/weather_home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await Firebase.initializeApp();
  await SharedPrefHelper.init();
  await initializeDateFormatting('id_ID', null);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(StyleConst.secondaryColor),
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(ShowCaseWidget(
      builder: (context) => const MyApp(),
      onFinish: () async {
        await SharedPrefHelper().setShowCase();
      }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InjectionContainer(),
      theme: ThemeData(textTheme: StyleConst.myTextTheme),
      debugShowCheckedModeBanner: false,
      initialRoute: RouterConst.splashScreen,
      getPages: MyRouterConfig().listPage,
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarStates();
}

class _BottomBarStates extends State<BottomBar> {
  final _pageController = PageController(initialPage: 0);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  int maxCount = 4;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomBarPages = [
      const WeatherHome(),
      const EarthQuakePage(),
      const NewsPage(),
      SettingsPage(),
    ];

    return Scaffold(
      key: _scaffoldKey,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: AnimatedNotchBottomBar(
          notchBottomBarController: _controller,
          removeMargins: false,
          bottomBarWidth: 500,
          showShadow: false,
          durationInMilliSeconds: 300,
          shadowElevation: 0,
          showLabel: true,
          textOverflow: TextOverflow.visible,
          maxLine: 1,
          color: const Color(StyleConst.secondaryColor),
          notchColor: const Color(StyleConst.secondaryColor),
          itemLabelStyle: const TextStyle(fontSize: 10, color: Colors.white),
          elevation: 0,
          bottomBarItems: const [
            BottomBarItem(
              inActiveItem: Icon(
                Icons.wb_cloudy_outlined,
                color: Colors.white,
              ),
              activeItem: Icon(
                Icons.wb_cloudy_rounded,
                color: Colors.white,
              ),
              itemLabel: 'Cuaca',
            ),
            BottomBarItem(
              inActiveItem: Icon(
                Icons.monitor_heart_outlined,
                color: Colors.white,
              ),
              activeItem: Icon(
                Icons.monitor_heart_rounded,
                color: Colors.white,
              ),
              itemLabel: 'Gempa',
            ),
            BottomBarItem(
              inActiveItem: Icon(
                Icons.collections_bookmark_outlined,
                color: Colors.white,
              ),
              activeItem: Icon(
                Icons.collections_bookmark_rounded,
                color: Colors.white,
              ),
              itemLabel: 'Berita',
            ),
            BottomBarItem(
              inActiveItem: Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ),
              activeItem: Icon(
                Icons.settings_rounded,
                color: Colors.white,
              ),
              itemLabel: 'Setelan',
            ),
          ],
          onTap: (int value) {
            _pageController.jumpToPage(value);
          },
          kIconSize: 24.0,
          kBottomRadius: 28.0,
        ),
      ),
    );
  }
}
