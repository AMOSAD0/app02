// ignore_for_file: prefer_const_constructors

import 'package:app02/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';
class Buttongoogle extends StatelessWidget {
  const Buttongoogle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 6.77.h,
                  width: 84.w,
                  decoration: BoxDecoration(color: HexColor('#DD4B39'),
                  borderRadius: BorderRadius.circular(28.sp),),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: SvgPicture.asset(googelLog,height: 1.934.h,width: 1954.w,),
                        ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text('Login with Google',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 12.sp),),
                          ),
                      ],
                    ),
                  ),
                );
  }
}

