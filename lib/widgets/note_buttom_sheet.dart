import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add%20note%20cubit/add_notes_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if(state is AddNotesSuccess){
              Navigator.pop(context);
            }
            if(state is AddNotesFailure){
              print('failed ${state.errorMessage}');
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNotesLoading ? true : false,
              child: const Padding(
              padding:EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(child: AddNoteForm())
              ),
            );
          },
        
      ),
    );
  }
}
