import 'package:app02/constants/const.dart';
import 'package:app02/presentation/widget/produc_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount:3,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
         itemBuilder: (context,index){
           return Padding(
             padding: const EdgeInsets.all(8.0),
             child: ProductCart(),
           );
         }
         ),
    );
  }
}