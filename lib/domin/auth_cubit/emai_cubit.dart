import 'dart:math';

import 'package:app02/domin/auth_cubit/auth_state.dart';
import 'package:app02/presentation/dialouges/toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';



class EmailCubit extends Cubit<AuthState>{
    EmailCubit() : super(InitState());
    static EmailCubit get(context)=>BlocProvider.of(context);
    FirebaseAuth auth = FirebaseAuth.instance;
    String ?id;
    bool t=false;

    EmailUPAuth(String emil,String pass){
      emit(EmaiLoading());
      auth.createUserWithEmailAndPassword(email: emil, password: pass,).then((value) {
        emit(EmailSucess(emil));
        auth.currentUser?.sendEmailVerification();
      }).catchError((onError){
        emit(EmailFail());
      });
    }

    EmailINAuth(String emil,String pass){
      
      emit(EmaiLoading());
      auth.signInWithEmailAndPassword(email:emil, password: pass).then((value)  {
        emit(EmailSucess(emil));
       t=true;
        
      }).catchError((onError){
        emit(EmailFail());
        t=false;
      });
    return t;
    }
    
}