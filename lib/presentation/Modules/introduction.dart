import 'dart:developer';

import 'package:app02/constants/const.dart';
import 'package:app02/constants/screens.dart';
import 'package:app02/data/cashHelper.dart';
import 'package:app02/presentation/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:hexcolor/hexcolor.dart';
class IntroudactionSc extends StatefulWidget {
  const IntroudactionSc({ Key? key }) : super(key: key);

  @override
  _IntroudactionScState createState() => _IntroudactionScState();
}

class _IntroudactionScState extends State<IntroudactionSc> {
  
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  @override
  Widget build(BuildContext context) {
    var index;
     var list0=[t00,t01,t02];
     var list1=[t10,t11,t12];
     final pages = List.generate(
        3,
          (indexm)=> Column(

              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        child: Container(
                        alignment: Alignment.center,
                        child: Image.asset('lib/PhoApp/$indexm.png',height:37.68.h , width: 64.26.w,)),
                      ),
                  
                   Text(list0[indexm],
                   textAlign: TextAlign.center,
                   style: TextStyle(
                   fontSize: 28,
                  // fontWeight: FontWeight.w800,
                   color: HexColor('#4A4B4D'),
                    ),
                   ),

                   SizedBox(height: 5.h,),

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text( list1[indexm],
                     textAlign: TextAlign.center,
                     style: TextStyle(
                      fontSize: 13,
                     color: HexColor('#7C7D7E'),
                       ),
                     ),
                   )
            ],
         
        ),
          
      
        );
        
       
      /*  (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Container(
                height: 280,
                child: Center(
                    child: Text(
                  "Page $index",
                  style: TextStyle(color: Colors.indigo),
                )),
              ),
            ));*/
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
          //  crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            //SizedBox(width: 50.w,),
              Positioned(
                child: SizedBox(
                  height: 95.h,//38.42.h,
                  width: 100.w,
                  child: PageView.builder(
                    
                    controller: controller,
                    // itemCount: pages.length,
                    itemBuilder: (_,dindex) {
                      
                      return (pages[dindex % pages.length]);
                    
                    },
                  ),
                ),
              ),///******************
              Positioned(
                top: 55.h,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SmoothPageIndicator(
              
                    controller: controller,
                    count: pages.length,
                    effect: WormEffect(
              
                      dotHeight: 0.98.h,
                      dotWidth: 0.98.h,
                      type: WormType.thin,
                      // strokeWidth: 5,
                      activeDotColor: HexColor(clrButton),
              
                    ),
                  ),
                ),
              ),
              //
              Positioned(
                top: 80.h,
                child: InkWell(
                  onTap: () {
                    CachHelper.putbool('first?', true);
                     Navigator.popAndPushNamed(context, Startpath);
                  } ,
                  child: buttonO(text: 'Next',)),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}