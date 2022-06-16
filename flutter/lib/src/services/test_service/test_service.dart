import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

import 'package:campus_tracker/src/models/response/response.dart';

part 'test_service.g.dart';

@RestApi(baseUrl: "http://localhost:1337/api/")
abstract class TestClient {
  @GET('/tests')
  Future<MyResponseTest> tests();
}
