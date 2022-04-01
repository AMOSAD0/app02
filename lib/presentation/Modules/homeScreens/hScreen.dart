// ignore: file_names
// ignore_for_file: file_names

import 'package:app02/constants/const.dart';
import 'package:app02/constants/screens.dart';
import 'package:app02/domin/location_cubit/location_cubit.dart';
import 'package:app02/domin/location_cubit/location_state.dart';
import 'package:app02/presentation/widget/contprodct.dart';
import 'package:app02/presentation/widget/textfilde.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Home1Sc extends StatefulWidget {
  const Home1Sc({ Key? key }) : super(key: key);

  @override
  _Home1ScState createState() => _Home1ScState();
}

class _Home1ScState extends State<Home1Sc> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationCubit,location_state>(
       listener: (context, state) {
        
      },
      builder: (context, state) =>  Scaffold(
        appBar: AppBar(
          shadowColor: Colors.white,
          centerTitle: false,
          backgroundColor: Colors.white,
          title: Text('Good morning Akila!',
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
          scrollDirection: Axis.vertical,
          children: [
           Padding(
             padding: const EdgeInsets.only(top: 21,left: 21),
             child: Text('Delivering to',
             style: TextStyle(
               color: HexColor('#B6B7B7'),
             ),
             ),
           ),
           //////////////////////////////
           Padding(
             padding: const EdgeInsets.only(right: 177.5,left: 21,),
             child: InkWell(
               onTap: ()async {
                await LocationCubit.get(context).checkServec();
                 Navigator.pushNamed(context, Mappath);
               },
               child: Container(
                 height: 2.5.h,
                 width: 46.93.w,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('Current Location',
                     style: TextStyle(
                       fontSize: 16,
                       color: HexColor('#7C7D7E'),
                     ),
                     ),
                     Icon(Icons.arrow_drop_down_outlined,color: HexColor('#FC6011'),size: 21.sp,),
                   ],
                 ),
               ),
             ),
             
           ),
      /////////////////////////////////////*\
                  Padding(
                    padding: const EdgeInsets.only(left: 21,right: 21,top: 34),
                    child: TextFildd(hintText1: 'Search',),
                  ),
          /////////////////////////////////     
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 16.9.h,
                      width: 100.w,
                      child: ListView.builder(itemBuilder:(context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 10.83.h,
                         width: 23.46.w,
                         
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(listpho[index]),
                              Text(listtext[index]),
                            ],
                          ),
                        ),
                      ),itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                  /*                                   */
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Popular Restaurents',
                        style: TextStyle(
                          fontSize: 20,
                          color: HexColor('#4A4B4D')
                        ),
                        ),
                        Text('View all',
                         style: TextStyle(
                           color: HexColor('#FC6011'),
                           fontSize: 13,
                         ),
                        ),
                      ],
                    ),
                  ),
                  /*-------------------------*/
                  ContnrProdct(
                    img: 'lib/PhoApp/aurelien-lemasson-theobald-x00CzBt4Dfk-unsplash.png',
                    txt: 'Minute by tuk tuk',
                  ),
                    ContnrProdct(
                    img: 'lib/PhoApp/heather-ford-teuvnOXOGVo-unsplash.png',
                    txt: 'Café de Noir',
                  ),
                   ContnrProdct(
                    img: 'lib/PhoApp/prakash-meghani-07bBNmiV7ag-unsplash.png',
                    txt: 'Bakes by Tella',
                  ),
                  /*-----------------*/
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Most Popular',
                        style: TextStyle(
                          fontSize: 20,
                          color: HexColor('#4A4B4D')
                        ),
                        ),
                        Text('View all',
                         style: TextStyle(
                           color: HexColor('#FC6011'),
                           fontSize: 13,
                         ),
                        ),
                      ],
                    ),
                  ),
                  /*-------------------------*/
                  Container(
                    height: 23.h,
                    child: ListView.builder(
                       
                      itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(listph[index],
                            height: 16.62.h,
                            ),
                            Text(tph[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: HexColor('#4A4B4D')
                            ),
                            )
                          ],
                        ),
                      ),
                    ),
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                    )
                    
                    ),
                    /*----------------------------*/
                      Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Recent Items',
                        style: TextStyle(
                          fontSize: 20,
                          color: HexColor('#4A4B4D')
                        ),
                        ),
                        Text('View all',
                         style: TextStyle(
                           color: HexColor('#FC6011'),
                           fontSize: 13,
                         ),
                        ),
                      ],
                    ),
                  ),
                  /*----------------*/
                  Container(
                    height: 40.h,
                    child: ListView.builder(itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 8,top: 3),
                      child: Container(
                        
                        height: 12.h,
                        child: Row(
                          children: [
                            Image.asset(listph2[index],height: 10.h,),
                            Container(
                              height: 12.h,
                              width: 70.w,
                             
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text(tph2[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: HexColor('#4A4B4D')
                            ),
                            ),
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    itemCount: 3,
                    ),
                  ),
          ],
          
        ),
      ),
    );
  }
}