import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool obscureText; // New property for password fields

  const CustomTextFormField({
    Key? key,
    required this.label,
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText = false, // Default value is false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText, // Set obscureText based on the parameter
      decoration: InputDecoration(
        hintText: label, // Use hintText instead of a separate Text widget
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        suffixIcon: obscureText // Only show the icon if obscureText is true
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off, // Adjust icon based on the obscureText parameter
                ),
                onPressed: () {
                  // You can implement your password toggle logic here
                },
              )
            : null, // No icon for non-obscure text fields
      ),
    );
  }
}
