// ignore_for_file: file_names

import 'package:app02/presentation/widget/button.dart';
import 'package:app02/presentation/widget/textfieldProfile.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';


class ProfileScH extends StatelessWidget {
  const ProfileScH({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text('Profile',
              style: TextStyle(
                fontSize: 20,
                color: HexColor('#4A4B4D'),
              ),),
        actions: [
              Icon(Icons.shopping_cart,size: 22.sp,
              color: HexColor('#4A4B4D'),
              )
            
      ],),

      body: ListView(
        children: [ Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('lib/PhoApp/NoPath - Copy (14).png'),
                radius: 45.sp,
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Icon(Icons.camera_alt,
                  color: HexColor('#707070'),
                  )
                ],),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Edit Profile',
              style: TextStyle(
                fontSize: 10,
                color: HexColor('#FC6011'),
                fontWeight: FontWeight.w500
              ),
              ),
            ),
      
            Text('Hi there Emilia!',
            style: TextStyle(
              fontSize: 16,
              color: HexColor('#4A4B4D'),
              fontWeight: FontWeight.bold
            ),
            ),
      
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Sign Out',
              style: TextStyle(
                fontSize: 11,
                color: HexColor('#7C7D7E'),
              ),
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.only(top: 47),
              child: Center(child: FieldProfile(hinttext1: 'Emilia Clarke',txt: 'Name',)),
            ),
      
             Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Center(child: FieldProfile(hinttext1: 'emiliaclarke@email.com',txt: 'Email',)),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Center(child: FieldProfile(hinttext1: '01282662411',txt: 'Mobile No',)),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Center(child: FieldProfile(hinttext1: 'No 23, 6th Lane, Colombo 03',txt: 'Address',)),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Center(child: FieldProfile(hinttext1: '**************',txt: 'Password',)),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 17),
              child: Center(child: FieldProfile(hinttext1: '**************',txt: 'Confirm Password',)),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 17,bottom: 100),
              child: buttonO(text: 'Save',),
            )
          ],
        ),
        ]),

    );
  }
}