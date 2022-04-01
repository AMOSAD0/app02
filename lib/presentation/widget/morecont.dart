// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
class MoreCont extends StatelessWidget {
  MoreCont({ Key? key ,this.img,this.txt}) : super(key: key);
var img;
var txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 9.23.h,
       width:88.8.w,

       child: Stack(
         children: [
           Container(
             width: 84.5.w,
             height: 9.23.h,
             decoration: BoxDecoration(
               color: HexColor('#F6F6F6'),
               borderRadius: BorderRadius.circular(7.sp),
             ),
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 13,top: 13,bottom: 9),
                   child: CircleAvatar(
                     backgroundColor: HexColor('#D8D8D8'),
                     child: SvgPicture.asset(img),
                     radius: 25.sp,
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(txt),
                 ),
               ],
             ),
           ),
           Positioned(
             right: 0,
             top: 2.5.h,
             child: CircleAvatar(
               backgroundColor: HexColor('#F6F6F6'),
               child: Icon(Icons.arrow_forward_ios,
               color: HexColor('#7C7D7E'),
               ),
             ),
           ),
         ],
       ),
    );
  }
}