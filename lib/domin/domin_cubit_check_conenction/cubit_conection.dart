import 'package:app02/domin/domin_cubit_check_conenction/conection_state.dart';
import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';

class CheckConnectCubit extends Cubit<CheckConnectionStat>{
  CheckConnectCubit() : super(LodingConnectin());

  final connectivity=Connectivity();
  bool? HasConnected;

  initialConnection()async
  {
    connectivity.onConnectivityChanged.listen(connectChange);
  }
  void connectChange(ConnectivityResult result)
{
  CheckConnect(result);
}
  Future<bool?> CheckConnect(ConnectivityResult result)async{
    if(result==ConnectivityResult.none){
      HasConnected=false;
      emit(Disconnect());
    }
    else{
      HasConnected=true;
      emit(Connect());
    }
  }


  
}