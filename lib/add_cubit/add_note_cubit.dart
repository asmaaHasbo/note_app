import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:touko/core/constant.dart';
import 'package:touko/modules/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNoteFun(NoteModel noteModel){
    try {
      emit(AddNoteLoading());
      var noteBox = Hive.box(noteBoxName);
      noteBox.add(noteModel);
      emit(AddNoteSuccess());
    } on Exception catch (e) {
      print(e.toString());
      emit(AddNoteFailure(errorMsg:e.toString()));
    }
  }

}
