// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:app02/presentation/widget/button.dart';
import 'package:app02/presentation/widget/textCode.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class CodeNumber extends StatelessWidget {
  const CodeNumber({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 8.0.h,
            left: 14.93.w,
            child: Text('We have sent an OTP to \n your Mobile',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: HexColor('#4A4B4D'),
              fontSize: 24,
            ),
            ),
          ),
          //text 2
          Positioned(
            top: 16.2.h,
            left:12.26.w ,
            child: Text('Please check your mobile number 010*****12\n  continue to reset your password',
             textAlign: TextAlign.center,
             style: TextStyle(
               color: HexColor('#7C7D7E'),
               fontSize: 14,

             ),
            ),
          ),
          //
          Positioned(
            top: 28.94.h,
            left: 9.06.w,
            child: TextCode(),
          ),
          //
         Positioned(
            top: 28.94.h,
            left: 31.46.w,
            child: TextCode(),
          ),
          
          Positioned(
            top: 28.94.h,
            left: 53.6.w,
            child: TextCode(),
          ),
          Positioned(
            top: 28.94.h,
            left: 76.w,
            child: TextCode(),
          ),
          Positioned(
            top: 40.27.h,
            left: 9.06.w,
            child: buttonO(text: 'Next',),
          ),
        ],
      ),
    );
  }
}