import 'package:test_app/services/auth/auth_user.dart';

abstract class AuthProvider {
  AuthUser? currentUser; //auth provideroptionaly return current user
  Future<AuthUser> logIn({
    // login function
    required String email,
    required String password,
  });

  Future<AuthUser> createUser({
    //creates a new user
    required String email,
    required String password,
  });

  Future<void> logOut(); //to log out the user

  Future<void> sendEmailVerification(); //to send an email verification
}
