import 'package:flutter/material.dart';

abstract class BaseApiService{
  //Get
  Future<dynamic> getApi(String url);
  //Post
  Future<dynamic> postApi(dynamic data,String url);
}