// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
class FieldProfile extends StatelessWidget {
  FieldProfile({ Key? key ,this.hinttext1,this.txt}) : super(key: key);
var hinttext1;
var txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.5.h,
      width: 88.86.w,
      decoration: BoxDecoration(
        color: HexColor('#F2F2F2'),
        borderRadius: BorderRadius.circular(28.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 34,top: 11),
            child: Text(txt,style: TextStyle(
              color: HexColor('#B6B7B7'),
              fontSize: 10
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 34),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hinttext1,
                hintStyle: TextStyle(
                  color: HexColor('#4A4B4D'),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}