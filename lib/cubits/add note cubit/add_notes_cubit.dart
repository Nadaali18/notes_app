import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState>{
  AddNotesCubit() : super(AddNotesInitial());


  addNote(NoteModel note){}
}