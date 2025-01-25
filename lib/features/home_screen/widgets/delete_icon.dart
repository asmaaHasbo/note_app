import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:touko/read_cubit/read_cubit.dart';

import '../../../modules/note_model.dart';
class DeleteIcon extends StatelessWidget {
  const DeleteIcon({super.key, required this.noteModel});
  final NoteModel noteModel ;
  @override
  Widget build(BuildContext context) {
    return  IconButton(
      onPressed: () {
        noteModel.delete();
        BlocProvider.of<ReadCubit>(context).readNotes();
      },
      icon: const Icon(
        Icons.delete,
        color: Colors.black,
        size: 30,
      ),
    );
  }
}
