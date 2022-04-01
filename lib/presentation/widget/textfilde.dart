import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class TextFildd extends StatelessWidget {
 TextFildd({ Key? key ,this.hintText1,this.mycon}) : super(key: key);
  String? hintText1;
  var mycon;
  String? tx;
  
  
  @override
  Widget build(BuildContext context) {
    var hscreen=MediaQuery.of(context).size.height;
    var wscreen=MediaQuery.of(context).size.width;
    return Container(
      height: 6.89.h,
      width: 81.86.w,
      decoration: BoxDecoration(
        color: HexColor('#F2F2F2'),
        borderRadius: BorderRadius.circular(28.sp),
      ),
      
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextFormField(
        controller: mycon,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText1,
            hintStyle: TextStyle(
              color: HexColor('#B6B7B7'),
              fontSize: 11.sp,
              fontWeight: FontWeight.w400,
            ),
            
          ),
        ),
        
      ),
    );
   
  }
  
}