// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CachHelper
{
static late SharedPreferences sharedPreferences;

static init()async{
  sharedPreferences=await SharedPreferences.getInstance();
}

static putbool(key,value){
  sharedPreferences.setBool(key, value);
}

static getValue(key){
return sharedPreferences.get(key)??false;
}

}