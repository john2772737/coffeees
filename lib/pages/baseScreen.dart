import 'package:flutter/material.dart';

class Basescreen extends StatelessWidget {
  final Widget child;

  Basescreen({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        centerTitle: true,
        elevation: 20,
        leading: Image.asset('assets/icons/cblogo.png'),
        title: const Text(
          "CoffeeBliss",
          style: TextStyle(
            fontFamily: 'EntaSans',
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFFCBD2A4),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),

      body: child,
    );
  }
}