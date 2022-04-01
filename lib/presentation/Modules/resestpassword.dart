import 'package:app02/constants/screens.dart';
import 'package:app02/domin/auth_cubit/auth%20cubit.dart';
import 'package:app02/domin/auth_cubit/auth_state.dart';
import 'package:app02/presentation/widget/button.dart';
import 'package:app02/presentation/widget/textfilde.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPass extends StatelessWidget {
   ResetPass({ Key? key }) : super(key: key);
   //final mycon=TextEditingController();
  TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PhoneAuthCubit,AuthState>(
      listener: (context, state) {
        
      },
      builder: (context,state)=> Scaffold(
         body: Stack(
           children: [
             //text reset
             Positioned(
               top: 7.389.h,
               left: 21.07.w,
               right: 21.07.w,
               child: Text('Reset Password',
               style: TextStyle(
                 color: HexColor('#4A4B4D'),
                 fontSize: 30,
                 fontWeight: FontWeight.normal,
               ),
               ),
             ),
              //text2
              Positioned(
                top: 13.79.h,
                right: 16.9.w,
                left: 16.9.w,
                child: Container(
               // width: 65.06.w,
                  height: 4.92.h,
                  child: Text('''    Please enter your email to receive a\nlink to  create a new password via email''',
                  style: TextStyle(
                    fontSize: 14,
                    color: HexColor('#7C7D7E'),
                  ),
                  ),
                ),
              ),
              //text field email
              Positioned(
                top: 26.108.h,
                right: 9.06.w,
                left: 9.06.w,
                child: TextFildd(hintText1: 'Phone',mycon: controller,),
              ),
              //button 
              Positioned(
                top: 37.19.h,
                right: 9.06.w,
                left: 9.06.w,
                child: InkWell(
                  onTap: () {
                    PhoneAuthCubit.get(context).phoneAuth(controller.text);
                    Navigator.pushNamed(context, codepath);
                  } ,
                  child: buttonO(text: 'Send',)),
              ),
           ],
         ),
        
      ),
    );
  }
}