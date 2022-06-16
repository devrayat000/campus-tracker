import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

import 'package:campus_tracker/src/models/response/response.dart';

part 'test_service.g.dart';

@RestApi(baseUrl: "http://10.0.2.2:1337/api/")
abstract class TestClient {
  factory TestClient(Dio dio, {String baseUrl}) = _TestClient;

  @GET('/tests')
  Future<MyResponseTest> tests();
}
