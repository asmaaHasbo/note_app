import 'package:flutter/material.dart';

import '../../../core/modules/note_model.dart';
import 'build_note_item.dart';

class ListOfNoteCards extends StatelessWidget {
  const ListOfNoteCards({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) => BuildNoteItem(noteModel: noteModel,),
      ),
    );
  }
}
