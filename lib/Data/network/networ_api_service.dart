
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:untitled/Data/network/base_api_service.dart';
class NetworkApiService extends BaseApiService{

  @override
  Future<dynamic> getApi(String url) async
  {
    dynamic responseJson;
    try{
      final response = await http.get(Uri.parse(url))
          .timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
    }
    on SocketException{
      throw Exception('');
    }
      return responseJson;
   }

   @override
  Future<dynamic> postApi(var data,String url) async
  {
    dynamic responseJson;
    try{
      final response = await http.post(Uri.parse(url),
      body: data).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);

    }
    on SocketException{
      throw Exception('');
    }
    print(responseJson);
    return responseJson;
  }
  
  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
    }
  }
}

