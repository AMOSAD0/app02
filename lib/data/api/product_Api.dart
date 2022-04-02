import 'package:app02/data/model/product_Model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductApi{
List<Product>products=[];
ProductApi(this.products);
Product p =new Product();
Stream<List<Product>>getProudcts(){
  final ref=FirebaseFirestore.instance.collection('Products');
  return ref.snapshots().map((event) {
    final proudcts=<Product>[];
    if(products.isNotEmpty){
      products.clear();
      for(var doc in event.docs){
        final prod=Product.fromJson(doc.data());
        prod.id=doc.id;
        products.add(prod);
      }
    }
    else{
      for(var doc in event.docs){
        final prod=Product.fromJson(doc.data());
        prod.id=doc.id;
        products.add(prod);
      }}
    return proudcts;
  });
}
}