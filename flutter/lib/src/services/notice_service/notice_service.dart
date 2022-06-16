import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

import 'package:campus_tracker/src/models/response/response.dart';

part 'notice_service.g.dart';

@RestApi(baseUrl: "http://10.0.2.2:1337/api/")
abstract class NoticeClient {
  factory NoticeClient(Dio dio, {String baseUrl}) = _NoticeClient;

  @GET('/notices')
  Future<MyResponseNotice> notices();
}
