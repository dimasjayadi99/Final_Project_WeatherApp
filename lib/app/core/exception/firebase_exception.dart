import '../constant/firebase_error_message.dart';

String getFirebaseAuthErrorMessage(String errorCode) {
  return firebaseAuthErrorMessages[errorCode] ?? "An unknown error occurred.";
}
