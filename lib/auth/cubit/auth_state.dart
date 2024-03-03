part of 'auth_cubit.dart';

enum AuthStatus {
  initial,
  loading,
  loaded,
  error,
}

class AuthState {
  final AuthStatus _status;
  final UserModel _user;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  AuthState({
    required AuthStatus status,
    required UserModel user,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  })  : _status = status,
        _user = user,
        _emailController = emailController,
        _passwordController = passwordController;

  AuthStatus get status => _status;

  UserModel get user => _user;

  TextEditingController get emailController => _emailController;

  TextEditingController get passwordController => _passwordController;

  AuthState copyWith({
    AuthStatus? status,
    UserModel? user,
    TextEditingController? emailController,
    TextEditingController? passwordController,
  }) {
    return AuthState(
      status: status ?? _status,
      user: user ?? _user,
      emailController: emailController ?? _emailController,
      passwordController: passwordController ?? _passwordController,
    );
  }
}
