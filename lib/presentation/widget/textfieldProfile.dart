// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
class FieldProfile extends StatelessWidget {
  FieldProfile({ Key? key ,this.hinttext1,this.txt}) : super(key: key);
var hinttext1;
var txt;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blueGrey)),
        height: MediaQuery.of(context).size.height * .07,
        width: MediaQuery.of(context).size.width * .9,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText:hinttext1 !,

            ),
          ),
        ),
      );
  }
}