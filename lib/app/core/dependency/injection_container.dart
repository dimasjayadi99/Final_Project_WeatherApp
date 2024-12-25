import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import '../../features/auth/data/data_sources/remote/auth_service.dart';
import 'package:pantera/app/core/data/data_source/remote/location_service.dart';
import 'package:pantera/app/core/data/mapper/kabupaten_mapper.dart';
import 'package:pantera/app/core/data/mapper/kecamatan_mapper.dart';
import 'package:pantera/app/core/data/mapper/kelurahan_mapper.dart';
import 'package:pantera/app/core/data/mapper/provinsi_mapper.dart';
import 'package:pantera/app/core/data/repositories/kabupaten_impl.dart';
import 'package:pantera/app/core/data/repositories/provinsi_impl.dart';
import 'package:pantera/app/core/domain/repositories/kabupaten_repository.dart';
import 'package:pantera/app/core/domain/repositories/kelurahan_repository.dart';
import 'package:pantera/app/core/domain/repositories/provinsi_repository.dart';
import 'package:pantera/app/core/domain/use_case/fetch_list_kabupaten.dart';
import 'package:pantera/app/core/domain/use_case/fetch_list_kecamatan.dart';
import 'package:pantera/app/core/domain/use_case/fetch_list_kelurahan.dart';
import 'package:pantera/app/core/domain/use_case/fetch_list_provinsi.dart';
import '../../features/auth/data/mapper/user_mapper.dart';
import '../../features/earth_quake/data/data_source/remote/earth_quake_service.dart';
import '../../features/weather/data/data_source/remote/weather_service.dart';
import '../data/repositories/kecamatan_impl.dart';
import '../data/repositories/kelurahan_impl.dart';
import '../domain/repositories/kecamatan_repository.dart';

class InjectionContainer extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirebaseAuth.instance);
    Get.lazyPut(() => FirebaseDatabase.instance.ref());

    Get.lazyPut(() => LocationService());

    Get.lazyPut(() => ProvinsiMapper());
    Get.lazyPut(() => KabupatenMapper());
    Get.lazyPut(() => KecamatanMapper());
    Get.lazyPut(() => KelurahanMapper());
    Get.putAsync(() async => UserMapper(), permanent: true);

    Get.lazyPut<ProvinsiRepository>(() => ProvinsiImpl(
          locationService: Get.find(),
          provinsiMapper: Get.find(),
        ));

    Get.lazyPut<KabupatenRepository>(() => KabupatenImpl(
          locationService: Get.find(),
          kabupatenMapper: Get.find(),
        ));

    Get.lazyPut<KecamatanRepository>(() => KecamatanImpl(
          locationService: Get.find(),
          kecamatanMapper: Get.find(),
        ));

    Get.lazyPut<KelurahanRepository>(() => KelurahanImpl(
          locationService: Get.find(),
          kelurahanMapper: Get.find(),
        ));

    Get.putAsync<AuthService>(
      () async => AuthService(firebaseAuth: Get.find(), database: Get.find()),
      permanent: true,
    );

    Get.putAsync<WeatherService>(() async => WeatherService(), permanent: true);
    Get.putAsync<EarthQuakeService>(() async => EarthQuakeService(),
        permanent: true);

    Get.putAsync(() async => FetchListProvinsi(Get.find()), permanent: true);
    Get.putAsync(() async => FetchListKabupaten(Get.find()), permanent: true);
    Get.putAsync(() async => FetchListKecamatan(Get.find()), permanent: true);
    Get.putAsync(() async => FetchListKelurahan(Get.find()), permanent: true);
  }
}
