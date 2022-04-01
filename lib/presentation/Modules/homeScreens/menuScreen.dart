// ignore_for_file: file_names

import 'package:app02/constants/const.dart';
import 'package:app02/presentation/widget/contMenu.dart';
import 'package:app02/presentation/widget/textfilde.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
class MenueScH extends StatelessWidget {
  const MenueScH({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar( centerTitle: false,
        backgroundColor: Colors.white,
        title: Text('Menu',
              style: TextStyle(
                fontSize: 20,
                color: HexColor('#4A4B4D'),
              ),),
        actions: [
              Icon(Icons.shopping_cart,size: 22.sp,
              color: HexColor('#4A4B4D'),
              )
            
      ],),

      body: Stack(
        alignment: Alignment.center,
        children: [

          
            Positioned(
              left: 0,
              top: 10.h,
              child: Image.asset(phside),height: 59.72.h,width: 25.86.w,),

          Positioned(
            top: 1.5.h,
            child: TextFildd(hintText1: 'Search',)),

            Positioned(
              top: 14.h,
              child: ContMenu(img: 'lib/PhoApp/davide-cantelli-jpkfc5_d-DI-unsplash.png',
              txt: 'Food',
              )),

              Positioned(
              top: 27.h,
              child: ContMenu(img: 'lib/PhoApp/allison-griffith-VCXk_bO97VQ-unsplash.png',
              txt: 'Beverages',
              )),

              Positioned(
              top: 40.h,
              child: ContMenu(img: 'lib/PhoApp/Group 6844.png',
              txt: 'Desserts',
              )),

              Positioned(
              top: 53.h,
              child: ContMenu(img: 'lib/PhoApp/Group 6845.png',
              txt: 'Promotions',
              )),
        ],
      ),
      
    );
  }
}