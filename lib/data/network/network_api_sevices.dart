import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:ks_live/data/app_exception.dart';
import 'package:ks_live/data/network/base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getResponse(String uri) async {
    dynamic responseJson;
    try {
      final response =
          await http.post(Uri.parse(uri)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future postResponse(String uri, data) async {
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(uri), body: data)
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());

      default:
        throw FetchDataException(
            'Error Occured While Communication with server');
    }
  }
}
