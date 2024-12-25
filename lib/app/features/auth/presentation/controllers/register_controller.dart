import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pantera/app/core/domain/entities/kabupaten_entity.dart';
import 'package:pantera/app/core/domain/entities/kecamatan_entity.dart';
import 'package:pantera/app/core/domain/entities/kelurahan_entity.dart';
import 'package:pantera/app/core/domain/entities/provinsi_entity.dart';
import 'package:pantera/app/core/domain/use_case/fetch_list_kabupaten.dart';
import 'package:pantera/app/core/domain/use_case/fetch_list_kecamatan.dart';
import 'package:pantera/app/core/domain/use_case/fetch_list_kelurahan.dart';
import 'package:pantera/app/core/domain/use_case/fetch_list_provinsi.dart';
import 'package:pantera/app/core/enum/response_state.dart';
import 'package:pantera/app/features/auth/domain/entities/user_entity.dart';
import 'package:pantera/app/features/auth/domain/use_cases/register_user.dart';
import '../../../../core/exception/firebase_exception.dart';

class RegisterController extends GetxController {
  final FetchListProvinsi fetchListProvinsi;
  final FetchListKabupaten fetchListKabupaten;
  final FetchListKecamatan fetchListKecamatan;
  final FetchListKelurahan fetchListKelurahan;
  final RegisterUser registerUser;

  RegisterController({
    required this.fetchListProvinsi,
    required this.registerUser,
    required this.fetchListKabupaten,
    required this.fetchListKecamatan,
    required this.fetchListKelurahan,
  });

  GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey2 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey3 = GlobalKey<FormState>();

  var responseState = ResponseState.init.obs;
  var message = ''.obs;

  var listProvinsi = <ProvinsiEntity>[].obs;
  var listKabupaten = <KabupatenEntity>[].obs;
  var listKecamatan = <KecamatanEntity>[].obs;
  var listKelurahan = <KelurahanEntity>[].obs;

  var currentStep = 0.obs;
  var selectedProvinsiCode = ''.obs;
  var selectedKabupatenCode = ''.obs;
  var selectedKecamatanCode = ''.obs;
  var selectedKelurahanCode = ''.obs;

  Future<void> registerAccount(UserEntity userEntity, String password) async {
    responseState.value = ResponseState.loading;
    update();
    try {
      await registerUser.registerAccount(userEntity, password);
      responseState.value = ResponseState.success;
    } on FirebaseAuthException catch (e) {
      responseState.value = ResponseState.failed;
      message.value = getFirebaseAuthErrorMessage(e.code);
    } finally {
      update();
    }
  }

  Future<void> fetchProvinsi() async {
    final response = await fetchListProvinsi.fetchListProvinsi();
    listProvinsi.value = response;
  }

  Future<void> fetchKabupaten(String provinsiCode) async {
    final response = await fetchListKabupaten.fetchListKabupaten(provinsiCode);
    listKabupaten.value = response;
  }

  Future<void> fetchKecamatan(String kabupatenCode) async {
    final response = await fetchListKecamatan.fetchListKecamatan(kabupatenCode);
    listKecamatan.value = response;
  }

  Future<void> fetchKelurahan(String kecamatanCode) async {
    final response = await fetchListKelurahan.fetchListKelurahan(kecamatanCode);
    listKelurahan.value = response;
  }

  void nextStep() {
    if (currentStep.value < 2) {
      currentStep.value++;
    }
  }

  void previousStep() {
    if (currentStep.value > 0) {
      currentStep.value--;
    }
  }
}
