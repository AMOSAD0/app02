import 'package:app02/data/api/order_Api.dart';
import 'package:app02/domin/order_cubit/orderState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/order_model.dart';
class OrderCubit extends Cubit<OrderStates>{
  OrderCubit() : super(LoadingOrder());
  static OrderCubit get(context)=>BlocProvider.of(context);
  List <Order>o_list=[];
  addOrder(name,price){
    emit(LoadingOrder());
    OrderApi o=OrderApi(o_list);
    o.addOrder(name, price);
  }
  deleteOrder(p)async{
    emit(LoadingOrder());
    OrderApi o =OrderApi(o_list);
    await o.deleteOrder(o).then((n){
      emit(Succesdelete());
    });
  }
}