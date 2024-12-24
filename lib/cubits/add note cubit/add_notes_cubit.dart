import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/constants.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState>{
  AddNotesCubit() : super(AddNotesInitial());


  addNote(NoteModel note)async{
    emit(AddNotesLoading());
  try{
    var notesBox=Hive.box<NoteModel>(kNotesBox);
    await notesBox.add(note);
    emit(AddNotesSuccess());
  }on Exception catch(e){
   emit(AddNotesFailure(e.toString()));
  }
  }
}