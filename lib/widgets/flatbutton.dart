import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlatButtonWidget extends StatelessWidget {
  const FlatButtonWidget({
    this.onPressed,
    this.text,
    this.colorText,
    this.colorButton,
  });

  final VoidCallback onPressed;
  final String text;
  final Color colorText;
  final Color colorButton;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: colorButton,
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: colorText,
        ),
      ),
    );
  }
}
