import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';


@injectable
class HttpClient {
  Dio _makeInstance({Map<String, dynamic>? headers}) {
    final Dio dioInstance = new Dio();

    dioInstance.options = BaseOptions(
        baseUrl: 'https://api.github.com'
    );
    return dioInstance;
  }

  Future<Response> getHttp(String path, {Map<String, dynamic>? headers}) {
    final Dio dio = this._makeInstance(headers: headers);
    return dio.get(path);
  }
}