import '../constant/path_const.dart';

class WeatherUtils {
  static FunCard mapWeatherDescription(String? weatherDesc) {
    switch (weatherDesc?.toLowerCase()) {
      case 'hujan ringan':
        return FunCard(
            pathIcon: PathConst.drizzleIcon,
            pathIllustration: PathConst.funCard5,
            weatherDesc:
                '~ Hari ini hujan ringan, pastikan sedia payung dan jas hujan ya! 😊 ~');
      case 'cerah berawan':
        return FunCard(
            pathIcon: PathConst.partlyCloudyIcon,
            pathIllustration: PathConst.funCard7,
            weatherDesc:
                '~ Cuaca cerah dengan sedikit awan, waktu yang tepat untuk beraktivitas di luar. 🌤 ~');
      case 'berawan':
        return FunCard(
            pathIcon: PathConst.cloudyIcon,
            pathIllustration: PathConst.funCard6,
            weatherDesc:
                '~ Langit sedikit berawan, nyaman untuk beraktivitas di luar ruangan. 🌥 ~');
      case 'hujan petir':
        return FunCard(
            pathIcon: PathConst.thunderStormIcon,
            pathIllustration: PathConst.funCard2,
            weatherDesc:
                '~ Hati-hati! Hujan petir sedang berlangsung. Lebih baik tetap di dalam rumah. ⚡️ ~');
      case 'hujan sedang':
        return FunCard(
            pathIcon: PathConst.rainyIcon,
            pathIllustration: PathConst.funCard3,
            weatherDesc:
                '~ Hujan sedang, jangan lupa membawa payung jika keluar. ☔️ ~');
      case 'hujan lebat':
        return FunCard(
            pathIcon: PathConst.rainyIcon,
            pathIllustration: PathConst.funCard1,
            weatherDesc:
                '~ Hujan lebat, pastikan Anda berada di tempat yang aman dan kering. 🌧 ~');
      case 'kabut':
        return FunCard(
            pathIcon: PathConst.cloudyIcon,
            pathIllustration: PathConst.funCard6,
            weatherDesc:
                '~ Kabut tebal, hati-hati saat berkendara karena jarak pandang terbatas. 🌫 ~');
      case 'cerah':
        return FunCard(
            pathIcon: PathConst.sunnyIcon,
            pathIllustration: PathConst.funCard8,
            weatherDesc:
                '~ Cuaca cerah, sempurna untuk kegiatan luar ruangan atau berolahraga. ☀️ ~');
      case 'hujan es':
        return FunCard(
            pathIcon: PathConst.snowyIcon,
            pathIllustration: PathConst.funCard2,
            weatherDesc:
                '~ Hujan es, pastikan kendaraan Anda aman dan hati-hati saat berkendara. ❄️ ~');
      case 'angin kencang':
        return FunCard(
            pathIcon: PathConst.rainyIcon,
            pathIllustration: PathConst.funCard7,
            weatherDesc:
                '~ Angin kencang sedang melanda, pastikan untuk menghindari tempat-tempat terbuka. 🌬 ~');
      default:
        return FunCard(
            pathIcon: PathConst.drizzleIcon,
            pathIllustration: PathConst.funCard4,
            weatherDesc:
                '~ Cuaca tidak diketahui, pastikan untuk selalu memeriksa update terbaru. 🌥 ~');
    }
  }
}

class FunCard {
  final String pathIcon;
  final String pathIllustration;
  final String weatherDesc;

  FunCard(
      {required this.pathIcon,
      required this.pathIllustration,
      required this.weatherDesc});
}
