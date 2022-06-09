import 'package:flutter/material.dart';

class PublicTextFormField extends StatelessWidget {
  const PublicTextFormField({
    Key? key,
    required this.controller,
    required this.hint,
    required this.errorMessage,
  }) : super(key: key);

  final TextEditingController controller;

  final String hint;
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.always,
        textAlign: TextAlign.left,
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: const Icon(Icons.account_circle),
        ),
        autofocus: true,
        validator: (String? text) {
          String _finalText = text ?? '';
          if (_finalText.trim().isEmpty) {
            return errorMessage;
          }
          return null;
        },
      ),
    );
  }
}
