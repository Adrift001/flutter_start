import 'package:dio/dio.dart';

class HttpConfig {
  static const String baseURL = "https://httpbin.org";
  static const int timeout = 5000;
}

class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
      baseUrl: HttpConfig.baseURL, connectTimeout: HttpConfig.timeout);

  static final Dio dio = Dio(baseOptions);

  static final Interceptor interceptor = InterceptorsWrapper(onRequest: (options) {
    print("onRequest");
    return options;
  }, onResponse: (res) {
    print("onResponse");
    return res;
  }, onError: (error) {
    print("onResponse");
    return error;
  });

  static Future<T> request<T>(String url,
      {String method = "get",
      Map<String, dynamic> params,
      Interceptor inter}) async {
    final options = Options(method: method);
    List<Interceptor> inters = [interceptor];
    if (inter != null) {
      inters.add(inter);
    }
    dio.interceptors.addAll(inters);
    try {
      Response response =
          await dio.request(url, queryParameters: params, options: options);
      return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }
  }
}
