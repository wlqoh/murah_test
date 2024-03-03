import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:murad_ahmed/models/user_model.dart';
import 'package:murad_ahmed/repositories/auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _user;

  AuthCubit(this._user)
      : super(AuthState(
          status: AuthStatus.initial,
          user: UserModel(password: '', username: ''),
    emailController: TextEditingController(),
    passwordController: TextEditingController(),
        ));

  Future<void> login ({required String email, required String password}) async {
    emit(state.copyWith(status: AuthStatus.loading));
    try {
      final UserModel? user = await _user.login(username: email, password: password);
      emit(state.copyWith(status: AuthStatus.loaded, user: user));
      print('done');
      print(state.status);
    } catch (error) {
      emit(state.copyWith(status: AuthStatus.error));
      print(error);
    }
  }

}
