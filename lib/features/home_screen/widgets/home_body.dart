import 'package:flutter/material.dart';
import 'package:touko/core/modules/note_model.dart';

import 'list_of_note_cards.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListOfNoteCards(noteModel: NoteModel(noteContent: 'jjjjjjjjjjjjjjjjjjjjjj', noteTime: 'jdjjj', noteTitle: 'kkkkkkkkk', color: 7),);
  }
}
