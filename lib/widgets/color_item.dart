
import 'package:flutter/material.dart';

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