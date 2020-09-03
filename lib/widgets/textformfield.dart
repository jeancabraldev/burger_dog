import 'package:flutter/material.dart';

class TextFormFielsWidget extends StatelessWidget {
  const TextFormFielsWidget({
    this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF787993),
        ),
      ),
    );
  }
}
