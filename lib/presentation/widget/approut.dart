import 'package:app02/constants/screens.dart';
import 'package:app02/presentation/Modules/cart_screen.dart';
import 'package:app02/presentation/Modules/code_Screen.dart';
import 'package:app02/presentation/Modules/homeScreen.dart';
import 'package:app02/presentation/Modules/introduction.dart';
import 'package:app02/presentation/Modules/loginScreen.dart';
import 'package:app02/presentation/Modules/mapScreen.dart';
import 'package:app02/presentation/Modules/product_Screen.dart';
import 'package:app02/presentation/Modules/resestpassword.dart';
import 'package:app02/presentation/Modules/signupScreen.dart';
import 'package:app02/presentation/Modules/splashScreen.dart';
import 'package:app02/presentation/Modules/startApp.dart';
import 'package:flutter/material.dart';

class appRout{
Route ?onGenrateRoute(RouteSettings routeSettings){

switch(routeSettings.name)
{
case splashpath:
 return MaterialPageRoute(builder: (context) => SplashSc(),);

case intropath:
 return MaterialPageRoute(builder: (context) => IntroudactionSc(),);

case Startpath:
 return MaterialPageRoute(builder: (context) => StartAppSc(),);

case loginpath:
 return MaterialPageRoute(builder: (context) => LoginSc(),);

case signuppath:
 return MaterialPageRoute(builder: (context) => SignUpSc(),);

case homepath:
 return MaterialPageRoute(builder: (context) => HomeSc(),);

case forgetpath:
 return MaterialPageRoute(builder: (context) => ResetPass(),);

 case codepath:
 return MaterialPageRoute(builder: (context) => CodeNumber(),);

 case Mappath:
 return MaterialPageRoute(builder: (context) => MapScrenn(),);

 case Product_:
 return MaterialPageRoute(builder: (context) => ProductScreen(),);
 
  case Cart:
 return MaterialPageRoute(builder: (context) => CartScreen(),);

}
}
}