// //interface - [implement]
// class AppException implements Exception {
//   final dynamic _message;
//   final dynamic _prefix;

//   AppException([this._message, this._prefix]);

//   @override
//   String toString() {
//     // TODO: implement toString
//     return "$_prefix $_message";
//   }
// }

// //fetch/comunication error
// class FetchDataException extends AppException {
//   FetchDataException([String? message])
//       : super(message, "Error during communication");
// }

// // Bad request
// class BadRequestException extends AppException {
//   BadRequestException([String? message]) : super(message, "Invalid request");
// }

// //unauthorized error
// class UnauthorizedErrorException extends AppException {
//   UnauthorizedErrorException([String? message])
//       : super(message, "Unauthorized request");
// }

// //Invalid input Error
// class InvalidInputException extends AppException {
//   InvalidInputException([String? message]) : super(message, "Invalid request");
// }
