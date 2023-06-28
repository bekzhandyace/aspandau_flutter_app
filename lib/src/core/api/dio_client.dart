import 'dart:developer';

import 'package:dio/dio.dart';



class DioClient {
  final dio = Dio();
  final _baseUrl = 'https://lmsyoko.store/api/v1/';

  Future<String?> login() async {
    try {
      final response = await dio.post(_baseUrl + 'accounts/');

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

  Future<List<dynamic>> fetchProductData() async {
    final dio = Dio();
    final response = await dio.get(_baseUrl + 'products');
    final productList = [];

    if (response.statusCode == 200) {
      final json = response.data['results'];

      for (var productJson in json) {
        final uuid = productJson['uuid'];
        final kind = productJson['kind'];
        final avatar = productJson['avatar'];

        final product = {
          'uuid': uuid,
          'kind': kind,
          'avatar': avatar,
        };

        productList.add(product);
      }
      return productList;
    } else {
      print('error fetch');
      throw Exception('Failed to fetch product');
    }
  }
}
