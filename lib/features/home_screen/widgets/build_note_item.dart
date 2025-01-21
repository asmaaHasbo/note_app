import 'package:flutter/material.dart';

import '../../../modules/note_model.dart';
import '../../edit_screen/edit_screen.dart';
import 'delete_icon.dart';
import 'note_description.dart';
import 'note_time.dart';
import 'note_title.dart';

class BuildNoteItem extends StatelessWidget {
  const BuildNoteItem({super.key , required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EditScreen(),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Container(
          padding:
              const EdgeInsets.only(top: 20, bottom: 25, left: 20, right: 15),
          decoration: BoxDecoration(
            color: const Color(0xffffcc80),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: NoteTitle(noteModel: noteModel),
                subtitle: NoteDescription(noteModel: noteModel),
                trailing: const DeleteIcon(),
              ),
              NoteTime(noteModel: noteModel),
            ],
          ),
        ),
      ),
    );
  }
}
