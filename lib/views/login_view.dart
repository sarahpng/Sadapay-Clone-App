import 'package:flutter/material.dart';
import 'package:flutter_verification_code_field/flutter_verification_code_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).splashColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Enter your login PIN",
                  style: Theme.of(context).textTheme.bodyMedium),
              VerificationCodeField(
                  length: 5,
                  onFilled: (value) => Navigator.of(context)
                      .pushNamedAndRemoveUntil(
                          '/mainScreen', (route) => false)),
              const SizedBox(
                height: 20,
              ),
              Text(
                "forgot PIN?",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ));
  }
}
