
// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app02/constants/const.dart';
import 'package:app02/constants/screens.dart';
import 'package:app02/domin/auth_cubit/emai_cubit.dart';
import 'package:app02/presentation/widget/button.dart';
import 'package:app02/presentation/widget/facebook.dart';
import 'package:app02/presentation/widget/googlebutton.dart';
import 'package:app02/presentation/widget/textfilde.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domin/auth_cubit/auth_state.dart';

class LoginSc extends StatelessWidget {
  const LoginSc({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var hscreen=MediaQuery.of(context).size.height;
    var wscreen=MediaQuery.of(context).size.width;
    var cont=TextEditingController();
    var cont1=TextEditingController();
    return BlocConsumer<EmailCubit,AuthState>(
      listener: (context, state) {
        
      },
      builder:(context,state)=> Scaffold(
        body: Stack(
          children: [
            //text login
            Positioned(
              top: 7.389.h,
              right: 40.w,
              left: 40.w,
              bottom: 87.68.w,
                child: Text('Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Metropolis',
                  color: HexColor('#4A4B4D'),
                ),
                ),
              
            ),
            //text2
            Positioned(
              top: 13.79.h,
              right: 29.6.w,
              left: 29.8.w,
              bottom: 83.8.h,
              child: Text('Add your details to login',
               style: TextStyle(
                 fontSize: 14,
                 fontFamily: 'Metropolis',
                 fontWeight: FontWeight.normal,
                 color: HexColor('#7C7D7E'),
               ),
              ),
            ),
            // text fild email
            Positioned(
              top: 20.56.h,
              right: 9.06.w,
              left: 9.06.w,
              child: TextFildd( hintText1: 'Your Email',mycon: cont,)),
    
              //text field pass
              Positioned(
              top: 30.91.h,
              right: 9.06.w,
              left: 9.06.w,
                child: TextFildd(hintText1: 'Password',mycon: cont1),
              ),
              //button
              Positioned(
                top: 41.25.h,
                right: 9.06.w,
                left: 9.06.w,
                child: InkWell(
                  onTap: () { 
                  // EmailCubit.get(context).EmailINAuth(cont.text, cont1.text);
                   
                   //print(t);
            //    if(EmailCubit.get(context).EmailINAuth(cont.text, cont1.text)){
                   Navigator.pushNamedAndRemoveUntil(context, homepath, (route) => false);
              //   }  
                },
                  child: buttonO(text: 'Login',)),
              ),
              //text click
              Positioned(
                top: 51.10.h,
                right:wscreen* 0.309,
                left:wscreen* 0.309,
                child: InkWell(
                  onTap: () => Navigator.pushNamed(context, forgetpath),
                  child: Text('Forgot your password?',
                  style: TextStyle(
                    fontSize: 14,
                    color: HexColor('#7C7D7E'),
                  ),
                  ),
                ),
              ),
              // text 2
              Positioned(
                top: 59.48.h,
                right:wscreen* 0.386,
                left:wscreen* 0.386,
                child: Text('or Login With',
                style: TextStyle(
                  fontSize: 14,
                  color: HexColor('#7C7D7E'),
                ),
                ),
              ), 
              //buttn face
              Positioned(
                top: 65.14.h,
                right: 8.w,
                left: 8.w,
                child: ButtonFace(),
              ),
              //google buttn
              Positioned(
                top: 75.36.h,
                right: 8.w,
                left: 8.w,
                child: Buttongoogle(),
              ),
              // text sign up
              Positioned(
                top: 92.48.h,
                bottom: 5.17.h,
               right: 22.9.w,
               left: 23.2.w,
              
                child: Container(
                  width: 53.86.w,
                  child: Row(
                    children: [
                      Text("Don't have an Account?",
                      style: TextStyle(
                        fontSize: 14,
                        color: HexColor('7C7D7E'),
                      
                      ),
                      ),
                      Text('Sign Up',
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