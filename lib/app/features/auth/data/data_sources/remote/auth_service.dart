import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:pantera/app/features/auth/data/models/user_model.dart';
import 'package:pantera/app/features/auth/domain/entities/user_entity.dart';

class AuthService {
  final FirebaseAuth firebaseAuth;
  final DatabaseReference database;

  AuthService({required this.firebaseAuth, required this.database});

  /// login authentication
  Future<String> loginEmailPassword(String email, String password) async {
    try {
      final response = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = response.user;
      if (user == null) {
        throw Exception('User authentication failed.');
      }

      final data = await database.ref.child('users').child(user.uid).get();

      if (!data.exists) {
        throw Exception('User data not found in the database.');
      }

      return data.key!;
    } on SocketException {
      throw Exception('An error occurred with the internet connection');
    } catch (e) {
      rethrow;
    }
  }

  /// register account
  Future<void> registerEmailPassword(
    UserEntity userEntity,
    String password,
  ) async {
    try {
      final response = await firebaseAuth.createUserWithEmailAndPassword(
          email: userEntity.email, password: password);
      final user = response.user;
      if (user != null) {
        await database.child('users').child(user.uid).set({
          'email': userEntity.email,
          'firstName': userEntity.firstName,
          'lastName': userEntity.lastName,
          'phone': userEntity.phone,
          'provinsiName': userEntity.provinsiName,
          'provinsiId': userEntity.provinsiId,
          'kabupatenName': userEntity.kabupatenName,
          'kabupatenId': userEntity.kabupatenId,
          'kecamatanName': userEntity.kecamatanName,
          'kecamatanId': userEntity.kecamatanId,
          'kelurahanName': userEntity.kelurahanName,
          'kelurahanId': userEntity.kelurahanId,
        });
      }
    } on SocketException {
      throw Exception('An error occurred with the internet connection');
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> fetchDataUser(String uid) async {
    try {
      final snapshot = await database.ref.child('users').child(uid).get();

      if (snapshot.value == null || snapshot.value is! Map) {
        throw Exception('Data not found or invalid format.');
      }

      final map = Map<String, dynamic>.from(snapshot.value as Map);
      return UserModel.fromJson(map);
    } on SocketException {
      throw Exception('An error occurred with the internet connection');
    } catch (e) {
      rethrow;
    }
  }
}
