import 'package:aspandau_flutter_app/core/api/dio_client.dart';



class AuthRepository {
  var dioClient = DioClient();
  
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
