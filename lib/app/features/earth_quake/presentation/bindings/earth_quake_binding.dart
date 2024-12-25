import 'package:get/get.dart';
import 'package:pantera/app/features/earth_quake/data/mapper/earth_quake_mapper.dart';
import 'package:pantera/app/features/earth_quake/data/repositories/earth_quake_impl.dart';
import 'package:pantera/app/features/earth_quake/domain/repositories/earth_quake_repository.dart';
import 'package:pantera/app/features/earth_quake/domain/use_case/fetch_earth_quake.dart';
import 'package:pantera/app/features/earth_quake/domain/use_case/fetch_list_earth_quake.dart';
import 'package:pantera/app/features/earth_quake/presentation/controllers/earth_quake_controller.dart';

class EarthQuakeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EarthQuakeMapper());
    Get.lazyPut<EarthQuakeRepository>(() => EarthQuakeImpl(
          earthQuakeMapper: Get.find(),
          earthQuakeService: Get.find(),
        ));
    Get.lazyPut(() => FetchListEarthQuake(Get.find()));
    Get.lazyPut(() => FetchEarthQuake(Get.find()));
    Get.lazyPut(() => EarthQuakeController(
        earthQuakeUC: Get.find(), listEarthQuakeUC: Get.find()));
  }
}
