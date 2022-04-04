import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        height: 10.h,
        width: 10.w,
        color: Colors.black,
      ),
    );
  }
}