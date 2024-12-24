import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon_appbar.dart';
import 'package:notes_app/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,required this.title,required this.icon,this.onPressed});
final String title;
final IconData icon;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(title,fontSize: 35,),
          CustomIconAppBar(icon: icon,onPressed: onPressed,),
        ],
      ),
    );
  }
}