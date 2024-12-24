import 'package:flutter/material.dart';
import 'package:notes_app/views/note%20view/add_note_buttom_sheet.dart';
import 'package:notes_app/views/note%20view/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const AddNoteButtomSheet();
              });
        },
        backgroundColor: Colors.purple,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: const Icon(Icons.add),
      ),
    );
  }
}
