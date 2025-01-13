import 'package:flutter/material.dart';
class NoteTime extends StatelessWidget {
  const NoteTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'may 12/2022',
      textAlign: TextAlign.end,
      style: TextStyle(color: Colors.black.withOpacity(.5)),
    );
  }
}
