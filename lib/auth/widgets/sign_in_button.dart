import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:murad_ahmed/auth/cubit/auth_cubit.dart';

class SignInButton extends StatelessWidget {
  final void Function()? onTap;

  const SignInButton({
    super.key,
    required this.onTap,
  });

  bool isLoading(BuildContext context) =>
      context.read<AuthCubit>().state.status == AuthStatus.loading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading(context) ? () {} : onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black,
        ),
        padding: const EdgeInsets.symmetric(vertical: 27),
        margin: const EdgeInsets.symmetric(vertical: 30),
        alignment: Alignment.center,
        child: const Text(
          'Sign in',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
