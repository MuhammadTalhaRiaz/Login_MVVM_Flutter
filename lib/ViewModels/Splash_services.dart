import 'dart:async';

import 'package:get/get.dart';
import 'package:untitled/ViewModels/controller/user_prefrences/user_prefrences.dart';
import 'package:untitled/routes/route_name.dart';
class SplashServices{
  UserPrefrences sp = UserPrefrences();
  void isLogin(){
    sp.getUser().then((value){
      print(value);
      if(value.token.toString() == 'null'){
        Timer(const Duration(seconds: 3),
                () => Get.toNamed(RouteName.logiScreen));
      }
      else {
        Timer(const Duration(seconds: 3),
                () => Get.toNamed(RouteName.homeScreen));
      }
    });

  }
}