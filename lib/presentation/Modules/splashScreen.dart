// ignore_for_file: file_names, prefer_const_constructors

import 'dart:async';

import 'package:app02/constants/screens.dart';
import 'package:app02/data/cashHelper.dart';
import 'package:app02/presentation/Modules/introduction.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



class SplashSc extends StatefulWidget {
  const SplashSc({ Key? key }) : super(key: key);

  @override
  _SplashScState createState() => _SplashScState();
}

class _SplashScState extends State<SplashSc> {
  @override
  initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
     bool first=CachHelper.getValue('first?');
     if(first){
        Navigator.popAndPushNamed(context, Startpath);
     }
     else{
       Navigator.popAndPushNamed(context, intropath);
     }
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
            height: 100.h,
            width: 100.h,
          decoration: BoxDecoration( 
            image: DecorationImage(image: AssetImage("lib/PhoApp/Background icons.png"),fit: BoxFit.fill),
          ),
          child: Center(
            child: Image(image: AssetImage("lib/PhoApp/Logo.png",),height: 22.78.h,width: 58.13.w,),
          ),
        ),
    );
  }
}

/*Container(
          height: 100.h,
          width: 100.h,
        decoration: BoxDecoration( 
          image: DecorationImage(image: AssetImage("lib/PhoApp/Background icons.png"),fit: BoxFit.fill),
        ),
        child: Center(
          child: Image(image: AssetImage("lib/PhoApp/Logo.png",),height: 22.78.h,width: 58.13.w,),
        ),
      );
*/