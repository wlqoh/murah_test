import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:murad_ahmed/auth/cubit/auth_cubit.dart';
import 'package:murad_ahmed/auth/login_page.dart';
import 'package:murad_ahmed/auth/register.dart';
import 'package:murad_ahmed/repositories/auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (context) => AuthCubit(AuthRepository()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/sign in': (_) => const LoginPage(),
          '/register': (_) => const RegisterPage(),
        },
        initialRoute: '/sign in',
      ),
    );
  }
}
