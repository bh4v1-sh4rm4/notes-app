import 'package:flutter/foundation.dart';

class UserNotFoundAuthException implements Exception {}

class WrongPasswordAuthException implements Exception {}

class WeakPasswordAuthException implements Exception {}

class EmailAlreadyInUseAuthException implements Exception {}

class InvalidEmailAuthException implements Exception {}

// gereric exception

class GenericAuthException implements Exception {}

class UserNotLoggedInAuthException implements Exception {}
