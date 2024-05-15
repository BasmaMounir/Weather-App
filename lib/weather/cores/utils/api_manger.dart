import 'package:dio/dio.dart';
import 'package:weather/weather/cores/utils/constants.dart';

class ApiManger {
  static late Dio dio;

  static void get() {
    dio = Dio(BaseOptions(baseUrl: Constants.baseUrl));
  }

  Future<Response> getRequest(
      {required String endPoint, Map<String, dynamic>? queryParameters}) async {
    var response = await dio.get(endPoint, queryParameters: queryParameters);
    return response;
  }

  Future<Response> postRequest(
      {required String endPoint, Map<String, dynamic>? body}) async {
    var response = await dio.post(endPoint,data:body );
    return response;
  }
}
