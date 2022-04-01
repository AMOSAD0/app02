import 'package:flutter/material.dart';

class NoInternetDialug extends StatelessWidget {
  bool? dismis;
   NoInternetDialug({ Key? key ,this.dismis}) : super(key: key);

  @override
  
  Widget build(BuildContext context) {
    return WillPopScope(child: AlertDialog(
      title: Text('No Internet يا هبل'),
      content: Icon(Icons.wifi_off),
    ), onWillPop:()async{return dismis!?true:false;});
  }
}