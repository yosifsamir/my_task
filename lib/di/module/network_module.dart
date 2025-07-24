import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio get dio => Dio(
    BaseOptions(
      baseUrl: "https://dattebayo-api.onrender.com",
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 5000),
      headers: {
        HttpHeaders.userAgentHeader: 'dio',
        'common-header': 'xx',
      },
    ),
  );
}