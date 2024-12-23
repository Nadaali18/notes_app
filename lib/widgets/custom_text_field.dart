import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hint, this.maxLines=1});
final String hint;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.purple[300],fontFamily: 'Lato',fontWeight: FontWeight.bold)
      ),
    );
  }
}