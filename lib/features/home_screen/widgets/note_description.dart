import 'package:flutter/material.dart';
class NoteDescription extends StatelessWidget {
  const NoteDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        'Flutter tipFlutter tipFlutter tip',
        style: TextStyle(
            color: Colors.black.withOpacity(.5),
            fontSize: 16
        ),
      ),
    );
  }
}
