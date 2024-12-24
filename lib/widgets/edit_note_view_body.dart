import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key,required this.note});
final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title,content;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 50,),
        CustomAppBar(
          title: 'Edit Note',
          icon: Icons.done,
          onPressed: () {
           widget.note.title = title ?? widget.note.title;
           widget.note.subTitle = content ?? widget.note.subTitle;
           widget.note.save();
           BlocProvider.of<NotesCubit>(context).fetchAllNotes();
           Navigator.pop(context);
          },),
        const SizedBox(height: 30,),
         Padding(
          padding:const EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextField(
            onChanged: (value) {
              title=value;
            },
            hint: widget.note.title,
            ),
        ),
         Padding(
          padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 13),
          child: CustomTextField(
            onChanged: (value) {
              content=value;
            },
            hint: widget.note.subTitle,maxLines: 5,),
        ),

      ],
    );
  }
}