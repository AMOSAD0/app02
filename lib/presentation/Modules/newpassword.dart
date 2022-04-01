import 'package:app02/presentation/widget/button.dart';
import 'package:app02/presentation/widget/textfilde.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class NewPasswordSc extends StatelessWidget {
  const NewPasswordSc({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //text new password
          Positioned(
            top: 7.38.h,
            left: 24.26.w,
            child: Text('New Password',
            style: TextStyle(
              fontSize: 30,
              color: HexColor('#4A4B4D'),
            ),
            ),
          ),
          //text 2
          Positioned(
            top: 13.79.h,
            left: 17.33.w,
            child: Text('''   Please enter your email to receive a  \nlink to  create a new password via email''',
            style: TextStyle(
              color: HexColor('#7C7D7E'),
              fontSize: 14,
            ),
            ),
          ),
          //text field new password
          Positioned(
            top: 23.399.h,
            left: 9.06.w,
            child: TextFildd(hintText1: 'New Password',),
          ),
          //text field con new password
          Positioned(
            top: 33.74.h,
            left: 9.06.w,
            child: TextFildd(hintText1: 'Confirm Password',),
          ),
          //button next
          Positioned(
            top: 44.08.h,
            left: 9.06.w,
            child: buttonO(text: 'Next',),
          ),
        ],
      ),
    );
  }
}