import 'package:app02/data/model/order_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrderApi{
 
 addOrder(L){
Order ?order;
order!.convrt(L);
  // FirebaseFirestore.instance.collection('collectionPath').add(list); 
 }
  

}