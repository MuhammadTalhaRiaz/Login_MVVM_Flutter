import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/Models/login/login_response_model.dart';
import 'package:untitled/Repository/login_repository/login_repository.dart';
import 'package:untitled/ViewModels/controller/user_prefrences/user_prefrences.dart';
import 'package:untitled/routes/route_name.dart';
import 'package:untitled/utils/utils.dart';

class LoginViewModel extends GetxController{

  final _loginrepository =LoginRepository();
  final numberController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  UserPrefrences userPrefrences =UserPrefrences();


  final numberfocusNode = FocusNode().obs;
  final passwordfocusNode = FocusNode().obs;
  RxBool loading = false.obs;
  void LoginApi(){
    loading.value = true;
    Map data = {
      "email" : numberController.value.text,
      "password" : passwordController.value.text,
    };
    _loginrepository.login(data).then((value) {

      loading.value = false;
      if(value["error"] == "user not found"){
        Utils.FToast("USer not found");
      }
      else{
        userPrefrences.saveUser(LoginResponseModel.fromJson(value)).then((value){
            Get.toNamed(RouteName.homeScreen);
        }).onError((error, stackTrace){

        });
        Utils.FToast("Success");
      }

    }).onError((error, stackTrace){
      print(error.toString());
      loading.value = false;
      Utils.FToast("Error");
    });
  }
}