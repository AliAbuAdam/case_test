import 'package:flutter/material.dart';
import 'package:case_test/src/app/extensions/extensions.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.obscureText = false,
    this.helperText,
    this.validator,
    this.onChanged,
    this.onTap,
  });

  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final String? helperText;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onTap: onTap,
      onChanged: onChanged,
      obscureText: obscureText,
      maxLines: 1,
      cursorColor: context.color.accent,
      decoration: InputDecoration(
        labelText: labelText,
        helperText: helperText,
      ),
    );
  }
}
