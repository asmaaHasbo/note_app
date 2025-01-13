import 'package:flutter/material.dart';
class NoteTitle extends StatelessWidget {
  const NoteTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Flutter tip ',
      style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold),
    ) ;
  }
}
