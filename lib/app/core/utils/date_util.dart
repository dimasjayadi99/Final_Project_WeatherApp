import 'package:intl/intl.dart';
import 'package:pantera/app/features/weather/domain/entities/weather_entity.dart';

String formatDate(String dateTime) {
  try {
    final parsedDate = DateFormat("yyyy-MM-dd HH:mm:ss").parse(dateTime);

    final formattedDate =
        DateFormat("EEEE, dd MMMM yyyy", 'id_ID').format(parsedDate);

    return formattedDate;
  } catch (e) {
    return "Tanggal tidak valid";
  }
}

String formatDateTime(String dateTime) {
  try {
    final parsedDate = DateFormat("yyyy-MM-dd HH:mm:ss").parse(dateTime);

    final formattedDate = DateFormat("HH:00", 'id_ID').format(parsedDate);

    return "$formattedDate WIB";
  } catch (e) {
    return "Tanggal tidak valid";
  }
}

String formatDates(List<WeatherEntity> dailyWeather) {
  final uniqueDates = dailyWeather
      .map((weather) =>
          DateTime.parse(weather.localDatetime.toString()).toLocal())
      .map((dateTime) =>
          DateFormat('EEEE, dd MMMM yyyy', 'id_ID').format(dateTime))
      .toSet()
      .toList();

  return uniqueDates.join(' - ');
}
