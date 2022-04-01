// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class TextCode extends StatelessWidget {
  const TextCode({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                   height: 6.89.h,
                   width: 14.93.w,
                   decoration: BoxDecoration(
                     color: HexColor('#F2F2F2'),
                     borderRadius: BorderRadius.circular(12.sp),
                   ),
                   child: TextFormField(
                     textAlign: TextAlign.center,
                       style: TextStyle(
                          fontSize: 35,
                           fontWeight:FontWeight.bold,
                       ),
                     maxLength: 1,                    
                       decoration: InputDecoration(
                        counterText: '',
                         hintText: '*',
                         hintStyle: TextStyle(
                           fontSize: 37,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     ),
                 );
    
  }
}