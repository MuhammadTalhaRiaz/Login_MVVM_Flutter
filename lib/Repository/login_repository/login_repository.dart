

import 'package:untitled/Api/api_url/api_url.dart';
import 'package:untitled/Data/network/networ_api_service.dart';

class LoginRepository{
  final _apiService = NetworkApiService();

  Future<dynamic> login(var data) async{
    dynamic respone =_apiService.postApi(data, ApiUrl.login);
    return respone;
  }
}
