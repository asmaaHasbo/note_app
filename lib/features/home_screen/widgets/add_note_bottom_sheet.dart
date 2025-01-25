import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:touko/add_cubit/add_note_cubit.dart';
import '../../../read_cubit/read_cubit.dart';
import 'note_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            // Navigator.pop(context);
            Navigator.pop(context);
            BlocProvider.of<ReadCubit>(context).readNotes();
          }
          if (state is AddNoteFailure) {
            debugPrint('flier ${state.errorMsg}');
          }
        },
        builder: (BuildContext context, AddNoteState state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: NoteFormField(),
              ),
            ),
          );
        },
      ),
    );
  }
}
