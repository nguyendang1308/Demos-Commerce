class ServerException implements Exception {}

class CacheException implements Exception {}

class NetworkException implements Exception {}

class NoInternetException implements Exception {
  late String _message;

  NoInternetException([String message = 'NoInternetException Occured']) {
    _message = message;
  }

  @override
  String toString() {
    return _message;
  }
}
