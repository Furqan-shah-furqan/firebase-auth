import 'package:flutter/material.dart';

class CostumTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CostumTextfield({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
