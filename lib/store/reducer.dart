import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../main.dart';

class LoginState {
  final bool isAuth;

  LoginState(this.isAuth)

factory LoginState.initial() => LoginState(
    isAuth: false,
    
  )
  
}

