import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService{
  late Map<String, String> _mainHeaders;
  late String token;
  final String appBaseUrl;
  ApiClient({required this.appBaseUrl}){
    baseUrl= appBaseUrl;
    timeout= Duration(seconds: 30);
    _mainHeaders = {
      'content-type' : 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(String uri,) async {
    try{
      Response response = await get(uri);
      return response;
    }catch(e){
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}