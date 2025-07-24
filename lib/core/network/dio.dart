import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DioClient {
  final Dio _dio;

  DioClient(this._dio);


  Future<Response> get(String url) async {
    return await _dio.get(url);
  }


}


