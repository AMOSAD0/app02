



// ignore_for_file: prefer_const_constructors

import 'package:app02/constants/const.dart';
import 'package:app02/data/model/product_Model.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProductScreen extends StatelessWidget {
 ProductScreen({ Key? key ,this.prod,this.img,this.count}) : super(key: key);

Product ?prod;
var img;
double? count=2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //==============================//
          Positioned(
            top: 0.h,
            child: Container(
              height: 40.h,
              width: 100.w,
              
             decoration: BoxDecoration(
               color: Colors.orange,  
               image: DecorationImage(image: AssetImage(img,),
                fit: BoxFit.fill
               ),
             ),
          //  child: Image.asset(img,),
            ),
          ),
          //====================================//
          Positioned(
            bottom: 0,
            child: Container(
              height: 65.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25.sp),topRight:Radius.circular(25.sp) ,),
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(prod!.Name!,
                    style: TextStyle(
                      fontSize: 20.sp,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(prod!.Price!,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Description',
                     style: TextStyle(
                      fontSize: 20.sp,
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Lorem ipsum dolor sit amet,consectetur adipiscing elit.\nOrnare leo non mollis id cursus.\nEu euismod faucibus in leo malesuada',
                 textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey[500]
                    ),
                    ),
                  ),
                  //================================================//
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:8.h,
                      width: 100.w,
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Text('Number of Portions',
                          ),
                          InkWell(
                            onTap: (){
                              count=count!-1;
                            },
                          child: Container(
                              height:5.h ,
                              width: 12.w,
                              child: Icon(Icons.exposure_minus_1,color: Colors.white,),
                              decoration: BoxDecoration(
                                 color: Colors.orange,
                                 borderRadius: BorderRadius.circular(30)
                              ),
                            ),
                          ),
                          Text(count!.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black
                          ),
                          ),
                            InkWell(
                              onTap:(){  count=count!-1;},child: Container(
                              height:5.h ,
                              width: 12.w,
                              child: Icon(Icons.plus_one_outlined,color: Colors.white),
                              decoration: BoxDecoration(
                                 color: Colors.orange,
                                 borderRadius: BorderRadius.circular(30)
                              ),
                          ),
                            ),

                        ],
                      ),
                    ),
                  ),
                  //=======================================//

                  Padding(
                    padding: const EdgeInsets.only(left: 80,right: 80),
                    child: Container(
                      height: 16.h,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(25),
                       // ignore: prefer_const_literals_to_create_immutables
                       boxShadow: [
                         BoxShadow(
                           color: Colors.grey,
                           offset: Offset(1,4),
                           spreadRadius: 4,
                           blurRadius: 4,
                         )
                       ],
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text('Total Price'),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text('LKR 1500'),
                         ),
                          InkWell(
                            onTap: () {
                              list_cart.add(prod!);
                              
                            },
                            child: Container(
                              height:4.h ,
                              width: 30.w,
                              child: Center(child: Text('ADD')),
                              decoration: BoxDecoration(
                                 color: Colors.orange,
                                 borderRadius: BorderRadius.circular(30)
                              ),
                            ),
                          ),
                       ],
                     ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          //======================================//
          Positioned(
            top: 30.h,
            right: 7.w,
            child: Container(
              height: 11.h,
              width: 20.w,
              child: Image.asset('lib/PhoApp/Add to favorites button.png'),
            ),
          ),
        ],
      ),
    );
  }
}