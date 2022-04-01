// ignore_for_file: file_names

import 'package:app02/presentation/widget/morecont.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';

class MoreScH extends StatelessWidget {
  const MoreScH({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text('More',
              style: TextStyle(
                fontSize: 20,
                color: HexColor('#4A4B4D'),
              ),),
        actions: [
              Icon(Icons.shopping_cart,size: 22.sp,
              color: HexColor('#4A4B4D'),
              )
            
      ],),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 21,top: 20),
            child: MoreCont(img: 'lib/PhoApp/002-income.svg',txt: 'Payment Details',),
          ),

            Padding(
            padding: const EdgeInsets.only(left: 21,top: 20),
            child: MoreCont(img: 'lib/PhoApp/shopping-bag.svg',txt: 'My Orders',),
          ),

            Padding(
            padding: const EdgeInsets.only(left: 21,top: 20),
            child: MoreCont(img: 'lib/PhoApp/003-bell.svg',txt: 'Notifications',),
          ),

            Padding(
            padding: const EdgeInsets.only(left: 21,top: 20),
            child: MoreCont(img: 'lib/PhoApp/004-inbox-mail.svg',txt: 'Inbox',),
          ),

            Padding(
            padding: const EdgeInsets.only(left: 21,top: 20),
            child: MoreCont(img: 'lib/PhoApp/005-info.svg',txt: 'About Us',),
          ),
        ],
      ),
    );
  }
}