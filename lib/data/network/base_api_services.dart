abstract class BaseApiServices {
  Future<dynamic> getResponse(String uri);
  Future<dynamic> postResponse(String uri, var data);
}
