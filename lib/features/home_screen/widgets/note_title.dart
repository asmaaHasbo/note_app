import 'package:flutter/material.dart';

import '../../../modules/note_model.dart';
class NoteTitle extends StatelessWidget {
  const NoteTitle({super.key, required this.noteModel});
 final NoteModel noteModel ;
  @override
  Widget build(BuildContext context) {
    return Text(
      noteModel.noteTitle,
      style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold),
    ) ;
  }
}
