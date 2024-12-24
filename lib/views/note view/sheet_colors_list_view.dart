import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add%20note%20cubit/add_notes_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';
import 'package:notes_app/widgets/constants.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex =0;
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
              BlocProvider.of<AddNotesCubit>(context).color = kcolors[index];
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