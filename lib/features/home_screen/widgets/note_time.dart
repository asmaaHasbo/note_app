import 'package:flutter/material.dart';

import '../../../modules/note_model.dart';

class NoteTime extends StatelessWidget {
  const NoteTime({super.key, required this.noteModel});
  final NoteModel noteModel ;

  @override
  Widget build(BuildContext context) {
    return Text(
      noteModel.noteTime,
      textAlign: TextAlign.end,
      style: TextStyle(color: Colors.black.withOpacity(.5)),
    );
  }
}
