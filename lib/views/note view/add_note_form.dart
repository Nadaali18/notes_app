import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add%20note%20cubit/add_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/note%20view/sheet_colors_list_view.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
            onSaved: (value) {
              content = value;
            },
          ),
            SizedBox(height: 16),
          const ColorsListView(),
          const SizedBox(
            height: 40,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNotesLoading ? true :false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var currentDate = DateTime.now();
                      var formattedCurrentDate = DateFormat.yMd().format(currentDate);
                      var noteModel = NoteModel(
                          title: title!,
                          subTitle: content!,
                          date: formattedCurrentDate,
                          color: Colors.purple.value);
                      BlocProvider.of<AddNotesCubit>(context)
                          .addNote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
              }
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
