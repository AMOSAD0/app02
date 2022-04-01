
// ignore_for_file: file_names

abstract class AuthState{

}
//
class InitState extends AuthState{
  
}
//
class PhoneLoading extends AuthState{

}
//
class PhoneSucess extends AuthState{
String phon;
PhoneSucess(this.phon);
}
//
class PhoneFail extends AuthState{

}
//
class OtpPhoneLoading extends AuthState{

}
//
class OtpPhoneSucess extends AuthState{

}
//
class OtpPhoneFail extends AuthState{

final String error;
OtpPhoneFail(this.error);

}
//
class EmaiLoading extends AuthState{

}
//
class EmailSucess extends AuthState{
String ?email;
EmailSucess(this.email);
}
//
class EmailFail extends AuthState{

}
//