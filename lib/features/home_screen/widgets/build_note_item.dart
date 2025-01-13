import 'package:flutter/material.dart';
import 'package:touko/features/home_screen/widgets/delete_icon.dart';
import 'package:touko/features/home_screen/widgets/note_description.dart';
import 'package:touko/features/home_screen/widgets/note_time.dart';
import 'package:touko/features/home_screen/widgets/note_title.dart';

class BuildNoteItem extends StatelessWidget {
  const BuildNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: const EdgeInsets.only(top: 20 , bottom: 25 , left: 20 , right: 15),
        decoration: BoxDecoration(
          color: const Color(0xffffcc80),
          borderRadius: BorderRadius.circular(16),
        ),
        child:  const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: NoteTitle(),
              subtitle: NoteDescription(),
              trailing:DeleteIcon(),
            ),
            NoteTime(),
          ],
        ),
      ),
    );
  }
}
