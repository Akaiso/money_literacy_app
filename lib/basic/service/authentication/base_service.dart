import 'package:dio/dio.dart';

var dio = Dio();
//default configs
var base = BaseOptions(baseUrl: '', connectTimeout: 5000, receiveTimeout: 3000);

Dio dioBase = Dio(base);

Future<Response> getTokenAccess() async {
  Response response = await dio.request('https://www.w3schools.com',
      data: {}, options: Options(method: 'GET'));
  return response;
}
