class AuthRepository {
  Future<bool> login({required String email, required String password}) async {
    print('loading');
    await Future.delayed(const Duration(seconds: 1), () {});

    if (email == "admin@admin.kz" && password == '1') {
      return true;
    } else {
      throw Exception('Invalid credentials');
    }
  }
}
