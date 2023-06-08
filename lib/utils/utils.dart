
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/utils/custom_colors.dart';
import 'package:get/get.dart';

class Utils{

  static void fieldFocusChange(BuildContext context,
      FocusNode current,FocusNode nextFocus)
  {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static FToast(String toast){
    Fluttertoast.showToast(msg: toast,
    backgroundColor: CustomColors.blackcolor);
  }

  static snackBar(String title,String messgae){
    Get.snackbar(
      title,messgae
    );
  }
}