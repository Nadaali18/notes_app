import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit%20view/edit_note_view.dart';
import 'package:notes_app/widgets/custom_text.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key,required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> EditNoteView(note: note,)));
        },
        child: Container(
          padding:const EdgeInsets.only(top: 24,bottom: 24,left: 16,),
          decoration: BoxDecoration(
            color: Color(note.color).withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:  CustomText(note.title,fontSize: 26,),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: CustomText(note.subTitle,fontSize: 18,color: Colors.white.withOpacity(0.5),),
                ),
                trailing: IconButton(
                  onPressed: (){
                   note.delete();
                   BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(Icons.delete,size: 26,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top : 15,right: 24),
                child: CustomText(note.date,color: Colors.white.withOpacity(0.4),fontSize: 16,),
              )
            ],
          ),
        ),
      ),
    );
  }
}