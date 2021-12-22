import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:you_move_me/data/config.dart';

class DioClient {
  Dio _dio = Dio(BaseOptions(baseUrl: BASE_URL));
  Future<dynamic> getRequest(
      {required String apiEnd, Map<String, dynamic>? queryParameter}) async {
    try {
      final res = await _dio.get(apiEnd, queryParameters: queryParameter);
      return res;
    } on DioError catch (e) {
      return e.response;
    } catch (e) {
      log(e.toString());
    }
  }

  Future<dynamic> postWithFormData(
      {required String apiEnd, Map<String, dynamic>? data}) async {
    try {
      final res = await _dio.post(apiEnd, data: FormData.fromMap(data ?? {}));
      return res;
    } on DioError catch (e) {
      return e;
    } catch (e) {
      log(e.toString());
    }
  }
}
