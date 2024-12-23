import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';
import 'package:notes_app/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText('Notes',fontSize: 35,),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}