import 'user.dart';

/// UserRepository interface
///
/// Implementations will be provided by the data level.
abstract class UserRepository {
  Future<void> signUp({
    required String email,
    required String password,
  });

  Future<void> signIn({
    required String email,
    required String password,
  });

  Future<void> signOut();

  Future<bool> isSignedIn();

  Future<String?> getUserToken();

  Future<User?> getCurrentUser();
}
