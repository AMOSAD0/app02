// ignore_for_file: camel_case_types, file_names, prefer_const_constructors

import 'package:app02/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';


class buttonO extends StatelessWidget {
   buttonO({ Key? key ,this.text}) : super(key: key);
var text;
  @override
  Widget build(BuildContext context) {
     var hScreen =MediaQuery.of(context).size.height;
     var wScreen =MediaQuery.of(context).size.width;
    return Container(
                decoration: BoxDecoration(
                  color: HexColor(clrButton),
                  borderRadius: BorderRadius.circular(28.sp),
                ),
                height: /*56.sp,8*/hScreen*0.0689,
                width:  /*307.sp,*/wScreen*0.8,
                child: Center(
                    child: Text(
                  text,
                  style: TextStyle(
                    color: HexColor(clrText),
                    fontSize: 16.sp,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w600,
                    
                  ),
                )),
              );
  }
}