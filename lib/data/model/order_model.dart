import 'dart:convert';

import 'package:app02/data/model/product_Model.dart';

class Order{

  Map <String,dynamic>maptOfNames=new Map();
  //List ? listOfName; 

convrt(List<Product> list){
  for(int i=1;i<=list.length;i++){
    maptOfNames['Name $i']=list[i].Name;
  }
  return jsonEncode(maptOfNames);
}

tojson(){
  return jsonEncode(maptOfNames);
}


}