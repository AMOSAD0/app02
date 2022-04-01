// ignore_for_file: unused_element, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app02/presentation/Modules/homeScreens/hScreen.dart';
import 'package:app02/presentation/Modules/homeScreens/menuScreen.dart';
import 'package:app02/presentation/Modules/homeScreens/moreScreen.dart';
import 'package:app02/presentation/Modules/homeScreens/offerScreen.dart';
import 'package:app02/presentation/Modules/homeScreens/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:sizer/sizer.dart';



const _kPages = <String, IconData>{
  'Menu':Icons.menu,
  'Offers': Icons.shopping_bag,
  'Home': Icons.home,
  'Profile': Icons.person_rounded,
  'More': Icons.read_more,
};
class HomeSc extends StatelessWidget {
  const HomeSc({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
       length: 5,
      initialIndex: 2,
      child: Scaffold(
                body: Column(
          children: [
            const Divider(),
            Expanded(
              child: TabBarView(
                children: [
                   MenueScH(),
                   OfferScH(),
                   Home1Sc(),
                   ProfileScH(),
                   MoreScH(),
                ],
              ),
            ),
          ],
        ),
         bottomNavigationBar: ConvexAppBar.badge(
           const<int,dynamic>{},
          backgroundColor: Colors.white,
          color: Colors.grey,
          activeColor: Colors.deepOrangeAccent,
          items: [
            for (final entry in _kPages.entries)
              TabItem(icon: entry.value, title: entry.key,),
          ],
      style: TabStyle.fixedCircle,
      height: 10.h ,
      )
      ),
    );
  }
}