import 'package:flutter/material.dart';

class CostumButton extends StatelessWidget {
  final String text;
  final  void Function()? onTap;
  const CostumButton({super.key, required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 60,
        decoration: BoxDecoration(
        color: Colors.blue,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Text(text)),
    );
  }
}
