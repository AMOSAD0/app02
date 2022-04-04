// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'dart:ui';

import 'package:app02/constants/const.dart';
import 'package:app02/constants/screens.dart';
import 'package:app02/presentation/widget/button.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

 class StartAppSc extends StatelessWidget {
   const StartAppSc({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     var hScreen =MediaQuery.of(context).size.height;
     var wScreen =MediaQuery.of(context).size.width;

     return Scaffold(
       body: Stack(
         children: [
           //top phot first
           /*Positioned(
             top: 0,
             child: Container(
              /* decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(topShape),fit: BoxFit.cover)
               ),*/
                width: 100.w,
                height: 50.h,
              child: Image.asset(topShape),
             ),
           ),*/
          Positioned(
            top: -4.h,
            left: -8.5.w,
            right: -8.5.w,
            child: Image.asset(topShape,height: 60.h, width: 150.w,),
          ),

           //loga phot 2
           Positioned(
             top: hScreen*0.35,
             right: 50.sp,
             left: 50.sp,
             child: Image.asset(logo,height: hScreen*0.23,),
           ), // text
           Positioned(
             top: hScreen*0.65,
             right: 10.sp,
             left: 10.sp,
             child: Column(
               children: [
                 Text('''    Discover the best foods from over 1,000 
restaurants and fast delivery to your doorstep''',
              style: TextStyle(
                fontFamily: 'Metropolis',
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: HexColor('#7C7D7E'),

                
              ),
                 )
               ],
             ),
           ),
           // button 

           Positioned(
             bottom: hScreen*0.14,
             //top: hScreen*0.784,
             height: hScreen*0.0689,
             left: 30.sp,
             right: 30.sp,
             child: InkWell(
               onTap: () => Navigator.pushNamed(context, loginpath),
               child: buttonO(text: 'Login')),
           ),

           //button 2
           Positioned(
             bottom: hScreen*0.0529,
              height: hScreen*0.0689,
             left: 30.sp,
             right: 30.sp,
        
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, signuppath),
                child: Container(
                  decoration: BoxDecoration(
                    color: HexColor(clrText),
                    border: Border.all(color: HexColor('#FC6011')),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: /*56.sp,8*/hScreen*0.0689,
                  width:  /*307.sp,*/wScreen*0.8,
                  child: Center(
                      child: Text(
                    'Create an Account',
                    style: TextStyle(
                      color: HexColor('#FC6011'),
                      fontSize: 16.sp,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w600,
                      
                    ),
                  )),
                ),
              ),
           ),

         ],
       ),
     );
   }
 }