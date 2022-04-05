import 'package:app02/data/api/order_Api.dart';
import 'package:app02/data/model/product_Model.dart';

import 'package:app02/domin/order_cubit/orderState.dart';
import 'package:bloc/bloc.dart';

class OrderCubit extends Cubit<OrderStates>{
OrderCubit():super(LoadingOrder());

add(List<Product>L){
emit(LoadingOrder());
OrderApi op=new OrderApi();
op.addOrder(L);
}

}