import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:touko/read_cubit/read_cubit.dart';
import '../../../modules/note_model.dart';
import 'list_of_note_cards.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});
  @override
  State<HomeBody> createState() => _HomeBodyState();

}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    BlocProvider.of<ReadCubit>(context).readNotes();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListOfNoteCards(
      noteModel: NoteModel(noteContent: 'jjjjjjjjjjjjjjjjjjjjjj',
        noteTime: 'jdjjj',
        noteTitle: 'kkkkkkkkk', color: 7,
      ),);
  }
}
