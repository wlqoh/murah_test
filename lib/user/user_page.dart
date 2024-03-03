import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:murad_ahmed/auth/cubit/auth_cubit.dart';

class UserPage extends StatelessWidget {

  const UserPage({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return Center(
              child: Column(
                children: <Widget>[
                  Text(
                      '${context.read<AuthCubit>().state.user.username}\n ${context.read<AuthCubit>().state.user.password}')
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
