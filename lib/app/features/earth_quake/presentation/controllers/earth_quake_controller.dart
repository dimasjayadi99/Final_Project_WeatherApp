import 'package:get/get.dart';
import 'package:pantera/app/core/enum/response_state.dart';
import 'package:pantera/app/features/earth_quake/domain/entities/earth_quake_entity.dart';
import 'package:pantera/app/features/earth_quake/domain/use_case/fetch_earth_quake.dart';
import 'package:pantera/app/features/earth_quake/domain/use_case/fetch_list_earth_quake.dart';
import 'package:pantera/app/features/earth_quake/presentation/pages/detail_map_page.dart';

class EarthQuakeController extends GetxController {
  final FetchEarthQuake earthQuakeUC;
  final FetchListEarthQuake listEarthQuakeUC;

  EarthQuakeController(
      {required this.earthQuakeUC, required this.listEarthQuakeUC});

  Rx<EarthQuakeEntity?> currentEarthQuake = Rx<EarthQuakeEntity?>(null);
  Rx<List<EarthQuakeEntity>?> listEarthQuake =
      Rx<List<EarthQuakeEntity>?>(null);

  var responseState = ResponseState.init.obs;
  var lintang = 0.0.obs;
  var bujur = 0.0.obs;

  @override
  onInit() {
    super.onInit();
    fetchCurrentEarthQuake();
  }

  Future<void> fetchCurrentEarthQuake() async {
    responseState.value = ResponseState.loading;
    update();

    try {
      final dataCurrentEarthQuake = await earthQuakeUC.currentEarthQuake();
      final dataListEarthQuake = await listEarthQuakeUC.listEarthQuake();
      currentEarthQuake.value = dataCurrentEarthQuake;
      listEarthQuake.value = dataListEarthQuake;
      List<String> splitCoordinates =
          currentEarthQuake.value!.coordinates.split(',');
      lintang.value = double.parse(splitCoordinates[0]);
      bujur.value = double.parse(splitCoordinates[1]);
      responseState.value = ResponseState.success;
    } catch (e) {
      responseState.value = ResponseState.failed;
      throw Exception(e);
    } finally {
      update();
    }
  }

  void toDetailMap(EarthQuakeEntity? earthQuakeEntity) {
    if (earthQuakeEntity != null) {
      List<String> splitCoordinates = earthQuakeEntity.coordinates.split(',');
      Get.to(DetailMapPage(
        entity: currentEarthQuake.value!,
        lintang: double.parse(splitCoordinates[0]),
        bujur: double.parse(splitCoordinates[1]),
      ));
    }
  }

  void listToDetailMap(int index) {
    if (listEarthQuake.value != null && index >= 0) {
      EarthQuakeEntity selectedEarthQuake = listEarthQuake.value![index];
      List<String> splitCoordinates = selectedEarthQuake.coordinates.split(',');
      Get.to(DetailMapPage(
        entity: selectedEarthQuake,
        lintang: double.parse(splitCoordinates[0]),
        bujur: double.parse(splitCoordinates[1]),
      ));
    }
  }
}
