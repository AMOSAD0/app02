import 'dart:convert';

import 'package:app02/data/model/product_Model.dart';

class Order{

  Map <String,dynamic>?maptOfNames;
  //List ? listOfName; 

convrt(List<Product> list){
  for(int i=0;i<=list.length;i++){
    maptOfNames!['Name $i']=list[i].Name;
  }
  return jsonEncode(maptOfNames);
}

tojson(){
  return jsonEncode(maptOfNames);
}


}