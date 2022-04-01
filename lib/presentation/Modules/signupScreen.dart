// ignore_for_file: file_names

import 'package:app02/constants/const.dart';
import 'package:app02/domin/auth_cubit/auth%20cubit.dart';
import 'package:app02/domin/auth_cubit/auth_state.dart';
import 'package:app02/domin/auth_cubit/emai_cubit.dart';
import 'package:app02/presentation/widget/button.dart';
import 'package:app02/presentation/widget/textfilde.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class SignUpSc extends StatelessWidget {
   SignUpSc({ Key? key }) : super(key: key);
  var cont=TextEditingController();
  var con1=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmailCubit,AuthState>(
      listener: (context, state) {
        
      },
    builder:(context,state)=> Scaffold(
         body: Stack(
           children: [
             //text sign up
             Positioned(
               top: 7.38.h,
               right: 36.w,
               left: 36.w,
               child: Text('Sign Up',
               style: TextStyle(
                 fontFamily: 'Metropolis',
                 fontSize: 30,
                 color: HexColor('#4A4B4D'),
                 fontWeight: FontWeight.normal,
               ),
               ),
             ),
             //text 2
             Positioned(
               top:13.79.h ,
               left: 27.63.w,
               right: 27.63.w,
               child: Text('Add your details to sign up',
               style: TextStyle(
                 fontSize: 14,
                 color: HexColor('#7C7D7E'),
                 fontWeight: FontWeight.w500,
               ),
               ),
             ),
             //textfield name
             Positioned(
               top: 20.56.h,
               right: 9.06.w,
               left: 9.06.w,
               child: TextFildd(hintText1: 'Name',),
             ),
             //textfield email
             Positioned(
               top: 30.91.h,
               left: 9.06.w,
               right: 9.06.w,
               child: TextFildd(hintText1: 'Email',mycon: cont),
             ),
             //textfield mobile
             Positioned(
               top: 41.25.h,
               left: 9.06.w,
               right: 9.06.w,
               child: TextFildd(hintText1: 'Mobile No',)),
               //textfield adderss
               Positioned(
                 top:51.60.h,
                 left: 9.06.w,
                 right: 9.06.w,
                 child: TextFildd(hintText1: 'Address',)),
                 //textfield password
                 Positioned(
                   top:61.94.h ,
                   left:9.06.w ,
                   right: 9.06.w,
                   child: TextFildd(hintText1: 'Password',mycon: con1,)),
                   //textfield con password
                   Positioned(
                     top:72.29.h,
                     left: 9.06.w,
                     right:9.06.w,
                     child: TextFildd(hintText1: 'Confirm Password',)),
                     //button
                     Positioned(
                       top: 82.63.h,
                       left: 9.06.w,
                       right:9.06.w ,
                       child: InkWell(
                         onTap: (){
                           EmailCubit.get(context).EmailUPAuth(cont.text, con1.text);
                         },
                         child: buttonO(text: 'Sign Up',))),
                       //text login
    
                        Positioned(
                top: 92.48.h,
                bottom: 5.17.h,
               right: 22.9.w,
               left: 23.2.w,
              
                child: Container(
                  width: 53.86.w,
                  child: Row(
                    children: [
                      Text("Already have an Account?",
                      style: TextStyle(
                        fontSize: 14,
                        color: HexColor('7C7D7E'),
                      
                      ),
                      ),
                      Text('Login',
                      style: TextStyle(
                        fontSize: 14,
                        color: HexColor(clrButton),
                      ),
                      )
                    ],
                  ),
                ),
              ),
           ],
         ),
      ),
    );
  }
}