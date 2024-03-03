import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:murad_ahmed/auth/cubit/auth_cubit.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final iconHide = const Icon(Icons.remove_red_eye_outlined);
  final iconShow = const Icon(Icons.remove_red_eye);
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    final state = context.read<AuthCubit>().state;
    return TextField(
      obscureText: isHidden,
      controller: state.passwordController,
      decoration: InputDecoration(
        hintText: 'Password',
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isHidden = !isHidden;
              });
            },
            icon: isHidden ? iconHide : iconShow),
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
