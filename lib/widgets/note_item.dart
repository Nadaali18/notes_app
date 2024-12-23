import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/custom_text.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditNoteView()));
        },
        child: Container(
          padding: EdgeInsets.only(top: 24,bottom: 24,left: 16,),
          decoration: BoxDecoration(
            color: Colors.purple.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const CustomText('Flutter Tips',fontSize: 26,),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: CustomText('build your career with nada ali sobhy abdlmoneam',fontSize: 18,color: Colors.white.withOpacity(0.5),),
                ),
                trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete,size: 26,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top : 15,right: 24),
                child: CustomText('May21, 2024',color: Colors.white.withOpacity(0.4),fontSize: 16,),
              )
            ],
          ),
        ),
      ),
    );
  }
}