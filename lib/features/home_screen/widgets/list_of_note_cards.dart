import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../modules/note_model.dart';
import '../../../read_cubit/read_cubit.dart';
import 'build_note_item.dart';

class ListOfNoteCards extends StatelessWidget {
  const ListOfNoteCards({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadCubit, ReadState>(
      builder: (context, state) {
       List<NoteModel> notesList = BlocProvider.of<ReadCubit>(context).notesList ?? [];

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: notesList.length,
            itemBuilder: (context, index) => BuildNoteItem(
              noteModel: noteModel,
            ),
          ),
        );
      },
    );
  }
}
