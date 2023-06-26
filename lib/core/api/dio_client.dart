import 'dart:developer';

import 'package:dio/dio.dart';

class DioClient {
  final dio = Dio();
  final _baseUrl = 'https://lmsyoko.store/api/v1/';

  Future<String?> getEmail() async {
    try {
      final response = await dio.get(_baseUrl + 'accounts/');

      if (response.statusCode == 200) {
        final json = response.data;
        final List<dynamic> results = json['results'];

        for (var json in results) {
          String email = json['email'];
          if (email == "admin@admin.kz") {
            log('$email', name: 'Email');
            break;
          }
        }
        return null;
      }
    } catch (e) {
      log(e.toString(), name: 'error response');
      return null;
    }
  }

  Future<void> getModules() async {
    try {
      final response = await dio.get(_baseUrl + 'products/');
      if (response.statusCode == 200) {
        final json = response.data;
        final List<dynamic> modules = json['results'];
        if (modules.isNotEmpty && modules.length >= 2) {
          for (var json in modules) {
            var secondModule = json[2];
            log(modules.toString(), name: 'Modules Data');
          }
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }
}


 
    // final userLogin = await dio.get(_baseUrl + 'accounts/');