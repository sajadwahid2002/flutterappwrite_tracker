import 'package:flutter/material.dart';
import 'types.dart';

class SignupForm extends StatelessWidget {
  final SignupCallback onPressedLogin;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;

  const SignupForm(
      {super.key,
      required this.onPressedLogin,
      required this.emailController,
      required this.passwordController,
      required this.nameController});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Create Account',
            style: TextStyle(
              fontFamily: 'Cairo',
            ),
          ),
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(
              label: Text(
                'name',
                style: TextStyle(
                  fontFamily: 'Cairo',
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              label: Text(
                'email',
                style: TextStyle(
                  fontFamily: 'Cairo',
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
              label: Text(
                'password',
                style: TextStyle(
                  fontFamily: 'Cairo',
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => onPressedLogin(
              nameController.text,
              emailController.text,
              passwordController.text,
            ),
            child: const Text(
              'Create',
              style: TextStyle(
                fontFamily: 'Cairo',
              ),
            ),
          )
        ],
      ),
    );
  }
}
