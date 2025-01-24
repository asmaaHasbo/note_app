import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:touko/core/constant.dart';
import 'package:touko/modules/note_model.dart';

part 'read_state.dart';

class ReadCubit extends Cubit<ReadState> {
  ReadCubit() : super(ReadNoteInitial());

  List<NoteModel> ? notesList ;
  readNotes(){
      var notesBox =  Hive.box<NoteModel>(noteBoxName);
      notesList =  notesBox.values.toList();
  }
}
