
import 'package:get/get.dart';
import 'package:untitled/Models/login/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
class UserPrefrences extends GetxController{

  Future<bool> saveUser(LoginResponseModel responseModel) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("token", responseModel.token.toString());
    return true;
  }

  Future<LoginResponseModel> getUser() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");
    return LoginResponseModel(
      token: token
    );
  }

  Future<bool> removeUser() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
    return true;
  }
 }