import 'package:app02/data/model/order_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrderApi{
 
 addOrder(L){
   Order order=new Order();
   FirebaseFirestore.instance.collection('Orders').add(order.convrt(L)); 
 }
  

}