import 'package:app02/data/model/order_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class OrderApi{
  List<Order> orders=[];
  OrderApi(this.orders);
  Order o =new Order();
  addOrder(name,price){
    Order order =new Order(Name: name,Price: price);
    FirebaseFirestore.instance.collection('Orders').add(order.toJson());
  }
  deleteOrder(o)async{
    await FirebaseFirestore.instance.collection('Orders').doc(o.toString()).delete();
  }
}