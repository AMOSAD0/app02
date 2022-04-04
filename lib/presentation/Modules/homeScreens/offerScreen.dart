// ignore_for_file: file_names

import 'package:app02/constants/const.dart';
import 'package:app02/constants/screens.dart';
import 'package:app02/domin/product_cubit/product_cubit.dart';
import 'package:app02/presentation/Modules/product_Screen.dart';
import 'package:app02/presentation/widget/contprodct.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app02/domin/product_cubit/product_state.dart';
import 'package:app02/data/model/product_Model.dart';

class OfferScH extends StatelessWidget {
  const OfferScH({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   List listph20=[
'lib/PhoApp/heather-ford-teuvnOXOGVo-unsplash.png',
'lib/PhoApp/aurelien-lemasson-theobald-x00CzBt4Dfk-unsplash.png',
'lib/PhoApp/nathan-dumlao-zUNs99PGDg0-unsplash.png',
];
    List<Product>list_p=ProductCubit.get(context).p_list;
    return BlocConsumer<ProductCubit,ProductStates>(
       listener: (context, state) {
        
      },
      builder: (context, state){

      
      return Scaffold(
            appBar: AppBar(
          shadowColor: Colors.white,
          centerTitle: false,
          backgroundColor: Colors.white,
          title: Text('Latest Offers',
                style: TextStyle(
                  fontSize: 20,
                  color: HexColor('#4A4B4D'),
                ),),
          actions: [
                Icon(Icons.shopping_cart,size: 22.sp,
                color: HexColor('#4A4B4D'),
                )
              
        ],),
        body: ListView(
          children: [Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 21,top: 14),
                child: Text('Find discounts, Offers special',
                style: TextStyle(
                  fontSize: 14,
                  color: HexColor('#7C7D7E'),
                ),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.only(left: 21,top: 22),
                child: Container(
                      decoration: BoxDecoration(
                        color: HexColor(clrButton),
                        borderRadius: BorderRadius.circular(28.sp),
                      ),
                      height:3.57.h,
                      width:41.86.w,
                      child: Center(
                          child: Text(
                       'Check Offers',
                        style: TextStyle(
                          color: HexColor(clrText),
                          fontSize: 11,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w600,
                          
                        ),
                      )),
                    ),
              ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60.h,
            width: 100.w,
            child: ListView.builder(
              itemCount: list_p.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                  //  Navigator.pushNamed(context, Product_);
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return ProductScreen(prod: list_p[index],img: listph20[index],);
                    },));
                  },
                  child: ContnrProdct(
                    img: listph20[index],
                    txt: list_p[index].Name,
                  ),
                );
              },),
          )
        )
              
        
            ],
          ),
          ]),
    
      );
  }
    );
  }
}