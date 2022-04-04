import 'dart:async';
import 'package:app02/data/api/product_Api.dart';
import 'package:app02/data/model/product_Model.dart';
import 'package:app02/domin/product_cubit/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ProductCubit extends Cubit<ProductStates>{
  late StreamSubscription<List<Product>> subscription;
  ProductCubit() : super(GetProductLoad()){
    subscription=ProductApi(p_list).getProudcts().listen((Products) {
      emit(GetProductSuccess());
    })..onError((e){
      emit(GetProductFailed(e));
    });
  }
  @override
  Future <void>Close()async{
    await subscription.cancel();
    super.close();
  }
  static ProductCubit get(context)=>BlocProvider.of(context);
  List <Product>p_list=[];
}