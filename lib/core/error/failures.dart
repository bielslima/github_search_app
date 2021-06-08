class SearchFailure implements Exception {}

class NotFoundUser extends SearchFailure {}

class ServerErrorFailure extends SearchFailure {
  final String error;
  ServerErrorFailure(this.error);
}