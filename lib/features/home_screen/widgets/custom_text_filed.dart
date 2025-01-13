import 'package:flutter/material.dart';

import 'build_outline_border.dart';
class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.hint,
    this.maxLines = 1,
  });

  final String hint ;
  final int maxLines ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextField(
        onSubmitted: (value){},
        maxLines: maxLines,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
        ),
      ),
    );
  }
}
