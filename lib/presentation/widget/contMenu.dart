// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class ContMenu extends StatelessWidget {
   ContMenu({ Key? key ,this.img,this.txt}) : super(key: key);
var img;
var txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 13.71.h,
      width: 95.w,
     // color: Colors.black,
      child: Stack(
        children: [
          Positioned(
            left: 15.73.w,
            child: Container(
              height: 10.71.h,
              width: 74.66.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.sp),
                boxShadow: [
                  BoxShadow(
                     color: Colors.grey.withOpacity(0.5),
                     spreadRadius: 6,
                     blurRadius: 7,
                     offset: Offset(0, 3), 
                  )
                ]
              ),
            //  color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 56,top: 20),
                    child: Text(txt,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#4A4B4D'),
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 56,top: 2),
                    child: Text('120 Items',
                    style: TextStyle(
                      fontSize: 11,
                      color: HexColor('#B6B7B7'),
                    ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            left: 0.5.w,
            top: 0.5.h,
            child: Image.asset(img,height: 11.h,)),

          Positioned(
            right: 0.w,
            top: 3.5.h,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
               shape: BoxShape.circle,
                  boxShadow: [BoxShadow(blurRadius: 7, color:Colors.grey.withOpacity(0.5), spreadRadius: 5)],
               ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                
                 radius: 13.sp,
                child: Icon(Icons.arrow_forward_ios,
                color: HexColor('#FC6011'),
                size: 13.sp,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}