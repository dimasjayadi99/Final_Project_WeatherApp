class NetworkException implements Exception {
  final int statusCode;
  late final String message;

  NetworkException({
    required this.statusCode,
  }) {
    switch (statusCode) {
      case 400:
        message = "Bad Request: The server could not understand the request.";
        break;
      case 403:
        message =
            "Forbidden: You do not have permission to access this resource.";
        break;
      case 404:
        message = "Not Found: The requested resource could not be found.";
        break;
      case 500:
        message = "Internal Server Error: The server encountered an error.";
        break;
      default:
        message = "An unexpected error occurred.";
        break;
    }
  }
}
