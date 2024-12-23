import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 30,),
        CustomAppBar(title: 'Edit Note',icon: Icons.done,),
        SizedBox(height: 30,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextField(hint: 'Title'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 13),
          child: CustomTextField(hint: 'Content',maxLines: 5,),
        ),

      ],
    );
  }
}