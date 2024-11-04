import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final GlobalKey<FormState> _loginform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String? _email;
    String? _password;
    
    return Form(
      key: _loginform,
      child: Container(
        color: Colors.white,
        height: 200,
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                ),
                 onChanged: (value) {
                _email = value; // Capture email input in real time
              },)
          ],
        ),
      ),
    );
  }
}
