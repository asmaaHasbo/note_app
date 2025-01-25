part of 'read_cubit.dart';

@immutable
abstract class ReadState {}

class ReadNoteInitial extends ReadState {}
class RefreshNote extends ReadState {}

