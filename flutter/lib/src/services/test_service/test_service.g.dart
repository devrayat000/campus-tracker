// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _TestClient implements TestClient {
  _TestClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'http://10.0.2.2:1337/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<MyResponseTest> tests() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MyResponseTest>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/tests',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MyResponseTest.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
