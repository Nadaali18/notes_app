import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add%20note%20cubit/add_notes_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key,required this.choice,required this.color});
final bool choice;
final Color color;
  @override
  Widget build(BuildContext context) {
    return choice ?  CircleAvatar(
         radius: 28,
        backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: color,
      ),) : CircleAvatar(
        radius: 28,
        backgroundColor: color,
      );
  
  }
}


class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex =0;
  List<Color> colors=[
    Colors.purple,
    Colors.pink,
    Colors.red,
    Colors.brown,
    Colors.black,
    Color(0xFF482C3D),
    Colors.deepPurple,
    Colors.deepPurpleAccent,
    Colors.cyan,
    Colors.indigo,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2*28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context,index)=>Padding(
          padding:const  EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<AddNotesCubit>(context).color = colors[index];
              setState(() {
              });
            },
            child: ColorItem(
              color: colors[index],
              choice: currentIndex == index,)),
        )),
    );
  }
}