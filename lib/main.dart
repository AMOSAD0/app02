// ignore_for_file: prefer_const_constructors

import 'package:app02/data/cashHelper.dart';
import 'package:app02/domin/auth_cubit/auth%20cubit.dart';

import 'package:app02/domin/auth_cubit/emai_cubit.dart';
import 'package:app02/domin/domin_cubit_check_conenction/conection_state.dart';
import 'package:app02/domin/domin_cubit_check_conenction/cubit_conection.dart';
import 'package:app02/domin/location_cubit/location_cubit.dart';

import 'package:app02/domin/product_cubit/product_cubit.dart';
import 'package:app02/presentation/dialouges/nointernet.dart';
import 'package:app02/presentation/widget/approut.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_context/one_context.dart';
import 'package:firebase_core/firebase_core.dart';
import 'domin/blocOb.dart';

void  main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await CachHelper.init();

 BlocOverrides.runZoned(
    () {
      // Use cubits...
        runApp(
     DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), 
  ),
  );
    },
    blocObserver: MyBlocObserver(),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CheckConnectCubit()..initialConnection( ),),
        BlocProvider(create: (context) => PhoneAuthCubit()),
        BlocProvider(create: (context) => EmailCubit()),
        BlocProvider(create: (context) => LocationCubit()),
        BlocProvider(create:(context) => ProductCubit()),
      //  BlocProvider(create:(context) => OrderCubit()),
      ],
      child: Sizer(
         builder: (context, orientation, deviceType){ 
        return BlocListener<CheckConnectCubit,CheckConnectionStat>(
          listener: (context, state) {
            if(state is Disconnect){
               OneContext().showDialog(
                 barrierDismissible: false,
                 builder: (context) =>NoInternetDialug(dismis: false,) );
            }
            else if(state is Connect){
              OneContext().popAllDialogs();
            }
          },
          child: MaterialApp(
            builder:OneContext().builder,
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
        //   builder: DevicePreview.appBuilder,
            onGenerateRoute: appRout().onGenrateRoute,
          
          ),
        );
      }
      ),
    );
    
  }
}