import 'package:flutter/material.dart';

import '../../../modules/note_model.dart';

class NoteDescription extends StatelessWidget {
  const NoteDescription({super.key, required this.noteModel});
  final NoteModel noteModel ;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        noteModel.noteContent,
        style: TextStyle(
            color: Colors.black.withOpacity(.5),
            fontSize: 16
        ),
      ),
    );
  }
}
