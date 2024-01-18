class FailureResponse implements Exception {
  final bool status;
  final String message;

  FailureResponse(this.status, this.message);
}
