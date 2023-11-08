// ignore_for_file: prefer_typing_uninitialized_variables

class AppException implements Exception {
  final _message;
  final _prefix;
  AppException(this._message, this._prefix);
  @override
  String toString() => '$_prefix$_message';
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error During Communication');
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, 'Invailid Request');
}

class UnAuthorisedException extends AppException {
  UnAuthorisedException([String? message])
      : super(message, 'Unauthorised Request');
}

class InvailidInputException extends AppException {
  InvailidInputException([String? message]) : super(message, 'Invailid Input');
}
