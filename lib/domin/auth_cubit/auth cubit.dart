
// ignore_for_file: file_names

import 'package:app02/domin/auth_cubit/auth_state.dart';
import 'package:app02/presentation/dialouges/toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PhoneAuthCubit extends Cubit<AuthState>
{
  PhoneAuthCubit() : super(InitState());
  static PhoneAuthCubit get(context)=>BlocProvider.of(context);

 FirebaseAuth auth = FirebaseAuth.instance;
 String ?id;

 phoneAuth(String phone){
    emit(PhoneLoading());
    auth.verifyPhoneNumber(
     timeout:const Duration(seconds: 60),
     phoneNumber: phone, 
     verificationCompleted: (credential){
       auth.signInWithCredential(credential)
       .then((value){
        emit(OtpPhoneSucess());
       });
     }, 
     verificationFailed: (error){
        showToast(msg: error.message.toString(),state: ToastedStates.ERROR);
       emit(OtpPhoneFail(error.toString()));
     }, 
     codeSent: (String phoneId,[int?token]){
       id=phoneId;
       emit(PhoneSucess(phone));
     }, 
     codeAutoRetrievalTimeout: (String time){
       print('TimeOut');
       emit(OtpPhoneFail('timeOut'));
     },
     );
 }

 void SumbitOtp(String otp){
   emit(OtpPhoneLoading());
   print('Code :$otp');
   AuthCredential credential= PhoneAuthProvider.credential(verificationId: id!, smsCode: otp);
   auth.signInWithCredential(credential).then((value) {
     
     if(value.user!=null){

     }
     else{
       showToast(msg: 'ioginWorng', state: ToastedStates.WARNING);
       emit(OtpPhoneFail(onError.toString()));
     }

   }).catchError((onError){
     print(onError.toString());
     showToast(msg: 'ioginWorng', state: ToastedStates.WARNING);
       emit(OtpPhoneFail(onError.toString()));
   });
 }

}


