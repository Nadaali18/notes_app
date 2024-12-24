import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item.dart';
import 'package:notes_app/widgets/constants.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key,required this.note});
final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
late int currentIndex ;
@override
  void initState() {
    currentIndex = kcolors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2*28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kcolors.length,
        itemBuilder: (context,index)=>Padding(
          padding:const  EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color =kcolors[index].value;
              setState(() {
              });
            },
            child: ColorItem(
              color: kcolors[index],
              choice: currentIndex == index,)),
        )),
    );
  }
}