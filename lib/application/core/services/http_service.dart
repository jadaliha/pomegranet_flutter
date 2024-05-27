import 'package:dio/dio.dart';

abstract class HTTPService<T> {
  void setToken(String token);
  String getToken();

  Future<Response> getData(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
    Duration? timeout,
  });

  Future<Response> postData(
    String url, {
    dynamic data,
    Map<String, dynamic>? header,
    Duration? timeout,
  });

  Future<Response> patchData(
    String url, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? header,
  });

  Future<Response<dynamic>> download({
    required String downloadUrl,
    required dynamic savePath,
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    bool deleteOnError = true,
    String lengthHeader = Headers.contentLengthHeader,
    dynamic data,
    Options? options,
  });
}

class DioService implements HTTPService {
  DioService({required this.dio});

  String token = '';
  final Dio dio;

  @override
  void setToken(String token) => this.token = 'Bearer $token';
  @override
  String getToken() => token;
  @override
  Future<Response> getData(
    String url, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? header,
    Duration? timeout,
  }) async {
    try {
      final response = await dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(headers: header, receiveTimeout: timeout),
      );

      return response;
    } catch (exp) {
      print(exp);
      rethrow;
    }
  }

  @override
  Future<Response> postData(
    String url, {
    dynamic data,
    Map<String, dynamic>? header,
    Duration? timeout,
  }) {
    return dio.post(
      url,
      data: data,
      options: Options(headers: header, receiveTimeout: timeout),
    );
  }

  @override
  Future<Response> patchData(
    String url, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? header,
  }) {
    return dio.patch(url, data: data, options: Options(headers: header));
  }

  @override
  Future<Response> download({
    required String downloadUrl,
    required dynamic savePath,
    void Function(int p1, int p2)? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    bool deleteOnError = true,
    String lengthHeader = Headers.contentLengthHeader,
    dynamic data,
    Options? options,
  }) {
    try {
      return dio.download(
        downloadUrl,
        savePath,
        onReceiveProgress: onReceiveProgress,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        deleteOnError: deleteOnError,
        lengthHeader: lengthHeader,
        data: data,
        options: options,
      );
    } catch (exception) {
      print(exception);
      rethrow;
    }
  }
}

typedef DownloadProgressCallback = void Function(int count, int total);

enum ApiCallMethod {
  get,
  post,
  patch,
  put,
  delete,
}
