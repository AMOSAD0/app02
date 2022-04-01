import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:hexcolor/hexcolor.dart';
class ContnrProdct extends StatelessWidget {
  ContnrProdct({ Key? key,this.img,this.txt }) : super(key: key);
  var img;
  var txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.8.h,
      width:100.w ,
      child:Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Image.asset(img,height: 23.7.h,),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Text(txt,
            style: TextStyle(
              color: HexColor('#4A4B4D'),
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: [
                Icon(Icons.star,
                size: 12.sp,
                 color: HexColor('#FC6011'),
                ),
                Text('4.6',
                style: TextStyle(
                  color: HexColor('#FC6011'),
                  fontSize: 11
                ),
                ),
              ],
            ),
          ),
        ],
      ) ,
    );
  }
}