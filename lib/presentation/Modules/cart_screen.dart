import 'package:app02/constants/const.dart';
import 'package:app02/presentation/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sizer/sizer.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     List listph20=[
'lib/PhoApp/heather-ford-teuvnOXOGVo-unsplash.png',
'lib/PhoApp/aurelien-lemasson-theobald-x00CzBt4Dfk-unsplash.png',
'lib/PhoApp/nathan-dumlao-zUNs99PGDg0-unsplash.png',
];
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 70.h,
            child: ListView.builder(
            itemCount:list_cart.length,
              itemBuilder:(context,index){
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 20.h,
                     decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.deepOrange,
                          width: 1.w
                        ),
                     ),
                     child: Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             height: 30.h,
                             width: 35.w,

                             decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage(listph20[index]),
                             fit: BoxFit.fill
                             ),
                             color: Colors.black,
                             borderRadius: BorderRadius.circular(20)
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [

                               Text(list_cart[index].Name!,
                               style: TextStyle(
                                 fontSize: 17.sp,
                                 fontWeight: FontWeight.bold
                               ),
                               ),
                               Text(list_cart[index].Price!,
                               style: TextStyle(
                                 fontSize: 17.sp,
                                 fontWeight: FontWeight.bold
                               ),
                               ),
                               Text('1',
                               style: TextStyle(
                                 fontSize: 17.sp,
                                 fontWeight: FontWeight.bold
                               ),
                               ),
                             ],
                           ),
                         )
                       ],
                     ),

                   ),
                 );
               }

              ),
          ),
          SizedBox(height: 5.h),
          InkWell(onTap:(){
          },child: buttonO(text:'order',))
        ],
      )
        
         
    );
  }
}