import 'dart:convert';

import 'package:app02/data/model/product_Model.dart';

class Order{

  Map <String,String>maptOfNames=new Map();
  //List ? listOfName; 

convrt(List<Product> list){
  int i=1;
  for(Product e in list){
    maptOfNames['Name $i'.toString()]=e.Name.toString();
    i=i+1;
    //print(maptOfNames);
  }
  return maptOfNames;
}

/*tojson(){
  return jsonEncode(maptOfNames);
}*/


}