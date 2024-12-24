import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/constants.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState>{
  AddNotesCubit() : super(AddNotesInitial());


  addNote(NoteModel note)async{
    emit(AddNotesLoading());
  try{
    var notesBox=Hive.box(kNotesBox);
    emit(AddNotesSuccess());
    await notesBox.add(note);
  }on Exception catch(e){
   AddNotesFailure(e.toString());
  }
  }
}