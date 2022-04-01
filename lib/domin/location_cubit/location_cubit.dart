

import 'package:app02/domin/location_cubit/location_state.dart';

import 'package:geocode/geocode.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';



class LocationCubit extends  Cubit<location_state>{
  LocationCubit() : super(InitState());
  static LocationCubit get(context)=>BlocProvider.of(context);

 checkServec()async{
   emit(loadingState());
 await  Location().serviceEnabled().then((value) {
     if(!value){
       Location().requestService();
      
     }
   }).catchError((onError){
     emit(fieldState());
     print(onError);
   });
   await Location().hasPermission().then((value) {
     if(value==PermissionStatus.denied){
       Location().requestPermission();
     }
   });

   Location().getLocation().then((value) {

     GeoCode().reverseGeocoding(latitude:value.latitude!, longitude:value.longitude!).then((value) {
       emit(succesState());
       print(value.city);
       print(value.streetAddress);
       print(value.countryName);
       print(value.region);
     }).catchError((onError){
       print(onError);
       emit(fieldState());
     });

   }).catchError((onError){
     print(onError);
   });
 }

}